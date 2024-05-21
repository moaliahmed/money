import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meta/meta.dart';
import 'package:money/pages/crypto/model/crypto_model.dart';
import 'package:money/pages/crypto/model/stocks_model.dart';
import 'package:money/pages/crypto/page/crypto_view.dart';
import 'package:money/pages/gold/model/silver_model.dart';
import 'package:sqflite/sqflite.dart';
import '../core/local_notifications.dart';
import '../core/shared_prefrence.dart';
import '../core/string_manager.dart';
import '../pages/currency/model/currency_bank_model.dart';
import '../pages/currency/model/currency_black_market_model.dart';
import '../pages/currency/screens/currency_view.dart';
import '../pages/gold/model/gold_model.dart';
import '../pages/gold/screen/gold_view.dart';
import '../pages/settings/settings_view.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentScreen = 0;
  final List<Widget> view = const [
    CurrencyView(),
    GoldView(),
    CryptoView(),
    //SilverView(),
    SettingView()
  ];

  @override
  Future<void> close() {
    bankCurrencyStream.close();
    blackMarketCurrencyStream.close();
    goldStream.close();
    silverStream.close();
    stocksStream.close();
    cryptoStream.close();
    return super.close();
  }

  changeScreen(int index) {
    currentScreen = index;
    emit(AppBottomNavBarChangeState());
  }

  List<GoldModel> goldList = [];
  List<CurrencyBankModel> currencyList = [];
  List<CryptoModel> cryptoList = [];
  List<StocksModel> stocksList = [];
  List<CurrencyBlackMarketModel> currencyBlackMarketList = [];
  List<SilverModel> silverList = [];
  final StreamController<List<CurrencyBankModel>> bankCurrencyStream =
  StreamController<List<CurrencyBankModel>>.broadcast();
  final StreamController<List<CurrencyBlackMarketModel>>
  blackMarketCurrencyStream =
  StreamController<List<CurrencyBlackMarketModel>>.broadcast();
  final StreamController<List<GoldModel>> goldStream =
  StreamController<List<GoldModel>>.broadcast();
  final StreamController<List<SilverModel>> silverStream =
  StreamController<List<SilverModel>>.broadcast();
  final StreamController<List<CryptoModel>> cryptoStream =
  StreamController<List<CryptoModel>>.broadcast();
  final StreamController<List<StocksModel>> stocksStream =
  StreamController<List<StocksModel>>.broadcast();

  void initialFunction() {
    currencyScrollController.addListener(onListenerController);
    blackMarketScrollController.addListener(onListenerController);
    goldScrollController.addListener(onListenerController);
    silverScrollController.addListener(onListenerController);
    cryptoScrollController.addListener(onListenerController);
    stocksScrollController.addListener(onListenerController);
    getBankCurrencyStream();
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  Future<void> initializeNotifications() async {
    // Define Android initialization settings
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('coin_money');

    // Define iOS initialization settings
    final DarwinInitializationSettings initializationSettingsIOS =
    DarwinInitializationSettings();

    // Define initialization settings
    final InitializationSettings initializationSettings =
    InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
      int id,
      String title,
      String body, {
        String payload = "", // Optional data attached to the notification
      }) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'your_channel_id', // Your unique notification channel id
      'Your App Name', // Channel title
      channelDescription: 'Your app description',
      // Optional channel description
      icon: 'coin_money',
      // Notification icon
      largeIcon: DrawableResourceAndroidBitmap('ic_launcher'),
      // Large icon displayed on some devices
      playSound: true,
      // Play notification sound
      enableVibration: true,
      // Enable vibration
      importance: Importance.max,
      // Importance of the notification
      priority: Priority.high,
      // Priority within the notification category
      visibility: NotificationVisibility.public, // Notification visibility
    );
    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails(
      // Optional data attached to the notification
    );
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
        id, title, body, platformChannelSpecifics);
  }

/////////////// currency Bank Code
  List<double> extractCurrencyBuyPrices(List<CurrencyPricesModel> pricesList) {
    List<double> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = double.parse(price.buyPrice!);
      buyPrices.add(buyPrice);
    }
    return buyPrices;
  }

  List<MyData> extractCurrencyBuyPricesAndData(
      List<CurrencyPricesModel> pricesList) {
    List<MyData> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = double.parse(price.buyPrice!);
      DateTime dateTime = DateTime.parse(price.scrapedAt!.substring(0, 10));
      buyPrices.add(MyData(date: dateTime, price: buyPrice));
    }
    return buyPrices;
  }

  Future<List<CurrencyBankModel>> getCurrencyBankDate() async {
    // final response = await Dio().get(AppString.currencyBankUrl).then((value) {
    //   currencyList = List<CurrencyBankModel>.from(
    //       (value.data as List).map((e) => CurrencyBankModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.currencyJsons);
    currencyList = [];
    response.forEach((e) {
      currencyList.add(CurrencyBankModel.fromJson(e));
      if (currencyAlert.isNotEmpty) {
        currencyAlert.forEach((element) {
          if (element['name'] == e['name']) {
            if (element['status'] == AppString.greater) {
              double savePrice = double.parse(element['price']);
              double currencyPrice = double.parse(e['current_buy_price']);
              if (savePrice <= currencyPrice) {
                //todo notification
                LocalNotifications.showSimpleNotification(
                    title: "Coin Money",
                    body: "سعر ${e['name']} وصل الي $savePrice جنيه",
                    payload: "This is simple data");
                 deleteDatabase(id: element['id']);
              }
            } else {
              double savePrice = double.parse(element['price']);
              double currencyPrice = double.parse(e['current_buy_price']);
              // showLocalNotification(title:'Coin Money Notification' ,body:'${element['name']} equal ${element['price']}' );
              if (savePrice >= currencyPrice) {
                //todo notification
                LocalNotifications.showSimpleNotification(
                    title: "Simple Notification",
                    body: "سعر ${e['name']} وصل الي ${e['price']} جنيه",
                    payload: "This is simple data");
                deleteDatabase(id: element['id']);
              }
            }
          }
        });
      }
    });

    bankCurrencyStream.sink.add(currencyList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return currencyList;
  }

  Stream<List<CurrencyBankModel>> getBankCurrencyStream() =>
      Stream.periodic(Duration(seconds: 3))
          .asyncMap((_) => getCurrencyBankDate());

/////////////// currency Black Market Code

  List<double> extractCurrencyBlackMarketBuyPrices(
      List<BlackMarketPricesModel> pricesList) {
    List<double> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = double.parse(price.buyPrice!);
      buyPrices.add(buyPrice);
    }
    return buyPrices;
  }

  Future<List<CurrencyBlackMarketModel>> getCurrencyBlackMarketDate() async {
    // final response =
    //     await Dio().get(AppString.currencyBlackBankUrl).then((value) {
    //   currencyBlackMarketList = List<CurrencyBlackMarketModel>.from(
    //       (value.data as List)
    //           .map((e) => CurrencyBlackMarketModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.blackMarketJson);
    currencyBlackMarketList = [];
    response.forEach((e) =>
        currencyBlackMarketList.add(CurrencyBlackMarketModel.fromJson(e)));
    blackMarketCurrencyStream.add(currencyBlackMarketList);
    print('update');
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return currencyBlackMarketList;
  }

  Stream<List<CurrencyBlackMarketModel>> getBlackMarketCurrencyStream() =>
      Stream.periodic(Duration(seconds: 3))
          .asyncMap((_) => getCurrencyBlackMarketDate());

  /////////// Gold Code
  List<double> extractGoldBuyPrices(List<GoldPricesModel> pricesList) {
    List<double> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = double.parse(price.buyPrice!);
      buyPrices.add(buyPrice);
    }
    return buyPrices;
  }

  Future<List<GoldModel>> getGoldDate() async {
    // final response = await Dio().get(AppString.goldUrl).then((value) {
    //   goldList = List<GoldModel>.from(
    //       (value.data as List).map((e) => GoldModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });

    final response = json.decode(AppString.goldJsons);
    goldList = [];
    response.forEach((e) => goldList.add(GoldModel.fromJson(e)));
    goldStream.add(goldList);
    //currencyList = response.toList();
    //print('//////////////////');
    // print(response.data);
    // print(goldList);
    return goldList;
  }

  Stream<List<GoldModel>> getGoldStream() =>
      Stream.periodic(Duration(seconds: 5)).asyncMap((_) => getGoldDate());

/////////// silver code
  List<double> extractSilverBuyPrices(List<SilverPricesModel> pricesList) {
    List<double> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = double.parse(price.priceInEgp!);
      buyPrices.add(buyPrice);
    }
    return buyPrices;
  }

  Future<List<SilverModel>> getSilverDate() async {
    // final response = await Dio().get(AppString.silverUrl).then((value) {
    //   silverList = List<SilverModel>.from(
    //       (value.data as List).map((e) => SilverModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.silverJson);
    silverList = [];
    response.forEach((e) => silverList.add(SilverModel.fromJson(e)));
    silverStream.add(silverList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return silverList;
  }

  Stream<List<SilverModel>> getSilverStream() =>
      Stream.periodic(Duration(seconds: 2)).asyncMap((_) => getSilverDate());

/////////// crypto code

  Future<List<CryptoModel>> getCryptoDate() async {
    // final response = await Dio().get(AppString.cryptoUrl).then((value) {
    //   cryptoList = List<CryptoModel>.from(
    //       (value.data as List).map((e) => CryptoModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.cryptoJsons);
    cryptoList = [];
    response.forEach((e) => cryptoList.add(CryptoModel.fromJson(e)));
    cryptoStream.add(cryptoList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return cryptoList;
  }

  Stream<List<CryptoModel>> getCryptoStream() =>
      Stream.periodic(Duration(seconds: 5)).asyncMap((_) => getCryptoDate());

/////// stocks code

  Future<List<StocksModel>> getStocksDate() async {
    // final response = await Dio().get(AppString.stockUrl).then((value) {
    //   cryptoList = List<CryptoModel>.from(
    //       (value.data as List).map((e) => CryptoModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.stocksJsons);
    stocksList = [];
    response.forEach((e) => stocksList.add(StocksModel.fromJson(e)));
    stocksStream.add(stocksList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return stocksList;
  }

  Stream<List<StocksModel>> getStocksStream() =>
      Stream.periodic(Duration(seconds: 3)).asyncMap((_) => getStocksDate());

  String returnRelativeTime(String time) {
    DateTime timestamp = DateTime.parse(time);
    DateTime now = DateTime.now().toUtc();
    Duration difference = now.difference(timestamp);
    String relativeTime = formatDuration(difference);
    return relativeTime;
  }

  String formatDuration(Duration duration) {
    if (duration.inDays > 0) {
      return '${duration.inDays} ${duration.inDays == 1 ? 'يوم' : 'أيام'} مضت';
    } else if (duration.inHours > 0) {
      return '${duration.inHours} ${duration.inHours == 1
          ? 'ساعة'
          : 'ساعات'} مضت';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} دقيقة${duration.inMinutes == 1
          ? 'دقيقة'
          : 'دقائق'} مضت';
    } else {
      return 'الآن';
    }
  }

  final currencyScrollController = ScrollController();
  final blackMarketScrollController = ScrollController();
  final goldScrollController = ScrollController();
  final silverScrollController = ScrollController();
  final cryptoScrollController = ScrollController();
  final stocksScrollController = ScrollController();

  void onListenerController() {
    emit(ControllerChangeState());
  }

  double scrollAnimation(int index, double itemSize,
      ScrollController scrollController) {
    final itemOffset = index * itemSize;
    final different = scrollController.offset - itemOffset;
    final percent = 1 - (different / (itemSize / 2));
    return percent;
  }

  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(ChangeAppModeChangeState());
    } else {
      isDark = !isDark;
      SharedPrefrenceHelper.saveData(key: 'isDark', value: isDark)
          .then((value) {
        emit(ChangeAppModeChangeState());
      });
    }
  }

/////////////// sqflite alert

  late Database database;
  List<Map> currencyAlert = [];
  List<Map> goldAlert = [];
  List<Map> silverAlert = [];
  List<Map> stocksAlert = [];
  List<Map> cryptoAlert = [];

  createDatabase() {
    openDatabase(
      'alert.db',
      version: 1,
      onCreate: (db, version) {
        db
            .execute(
            'CREATE TABLE alert (id INTEGER PRIMARY KEY,category TEXT,name TEXT,price TEXT,status TEXT)')
            .then((value) {
          print('table create');
        }).catchError((error) {
          print('Error when create table ${error.toString()}');
        });
      },
      onOpen: (db) {
        getFromDatabase(db);
        print('database opened');
      },
    ).then((value) {
      database = value;
      print('database create');
      emit(CreateDatabaseState());
    });
  }

  getFromDatabase(database) {
    currencyAlert = [];
    goldAlert = [];
    silverAlert = [];
    stocksAlert = [];
    cryptoAlert = [];
    database.rawQuery('SELECT * FROM alert').then((value) {
      print(value);
      value.forEach((element) {
        if (element['category'] == AppString.currencyAlert) {
          currencyAlert.add(element);
        } else if (element['category'] == AppString.goldAlert) {
          goldAlert.add(element);
        } else if (element['category'] == AppString.silverAlert) {
          silverAlert.add(element);
        } else if (element['category'] == AppString.stocksAlert) {
          stocksAlert.add(element);
        } else if (element['category'] == AppString.cryptoAlert) {
          cryptoAlert.add(element);
        }
      });
      emit(GetDatabaseState());
    });
  }

  //name TEXT,category TEXT,price TEXT,status TEXT
  Future insertDatabase({
    required String name,
    required String category,
    required String price,
    required String status,
  }) async {
    return await database.transaction(
          (txn) =>
          txn.rawInsert(
              'INSERT INTO alert(name,category,price,status)VALUES("$name", "$category","$price","$status" )')
              .then(
                (value) {
              print('$value Insert Successfully');
              emit(InsertDatabaseState());
              getFromDatabase(database);
            },
          ).catchError(
                (error) {
              print('Error When i Insert new Record $error');
            },
          ),
    );
  }


  Future deleteDatabase({
    required int id,
  }) async {
    return await database.rawUpdate('DELETE FROM alert WHERE id = ?',
        [id]).then((value) {
      print('delete successfully');
      getFromDatabase(database);
      emit(UpdateDatabaseState());
    });
  }
}
//   Stream<List<CurrencyBankModel>> getCurrencyBankData() async* {
//     while (true) {
//       // Wait for some time before making the next API call
//       await Future.delayed(Duration(seconds: 1));
//
//       //final response = await Dio().get(AppString.currencyBankUrl);
//
//       final response = json.decode(jsons);
//       yield List<CurrencyBankModel>.from((response.data as List)
//           .map((e) => CurrencyBankModel.fromJson(response.data)));
//       print('success////////');
//       // if (response.statusCode == 200) {
//       //  // yield CurrencyBank.fromJson(response.data);
//       //   // yield List<CurrencyBank>.from((response.data as List)
//       //   //     .map((e) => CurrencyBank.fromJson(response.data)));
//       // } else {
//       //   // Handle the error or throw an exception
//       //   throw Exception('Failed to load data');
//       // }
//     }
//   }
