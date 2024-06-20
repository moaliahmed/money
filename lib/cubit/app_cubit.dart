import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
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
import '../pages/prediction/model/currency_ai_model.dart';
import '../pages/prediction/model/gold_ai_model.dart';
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
  List<Predictions> currencyAiList = [];
  List<GoldAiModel> goldAiList = [];

  //todo list <Currency Ai model >
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

  // todo make streamController <list<currency Ai model>>
String name='';
String email='';
String token='';
  void initialFunction() {
     name=SharedPrefrenceHelper.getData(key: 'name')!=null?SharedPrefrenceHelper.getData(key: 'name'):'';
     email=SharedPrefrenceHelper.getData(key: 'email')!=null?SharedPrefrenceHelper.getData(key: 'email'):'';
     token=SharedPrefrenceHelper.getData(key: 'token')!=null?SharedPrefrenceHelper.getData(key: 'token'):'';
     print('$name $email $token');
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

/////////////// currency Bank Code
  List<double> extractCurrencyBuyPrices(List<CurrencyPricesModel> pricesList) {
    List<double> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = price.buyPrice!.toDouble();
      buyPrices.add(buyPrice);
    }
    return buyPrices;
  }

  List<MyData> extractCurrencyBuyPricesAndData(
      List<CurrencyPricesModel> pricesList) {
    List<MyData> buyPrices = [];
    for (var price in pricesList) {
      double buyPrice = price.buyPrice!;
      DateTime dateTime = DateTime.parse(price.scrapedAt!.substring(0, 10));
      buyPrices.add(MyData(date: dateTime, price: buyPrice));
    }
    return buyPrices;
  }

  Future<List<CurrencyBankModel>> getCurrencyBankDate() async {
    final response = await Dio().get(AppString.currencyBankUrl).then((value) {
      currencyList = List<CurrencyBankModel>.from(
          (value.data as List).map((e) => CurrencyBankModel.fromJson(e)));

      value.data.forEach((e) {
        if (currencyAlert.isNotEmpty) {
          currencyAlert.forEach((element) {
            if (element['name'] == e['name']) {
              double savePrice = element['price'];
              double currencyPrice = e['current_buy_price'];
              if (element['status'] == AppString.greater &&
                  savePrice <= currencyPrice) {
                //todo notification
                LocalNotifications.showSimpleNotification(
                    title: "Coin Money",
                    body: "سعر ${e['name']} وصل الي $savePrice جنيه",
                    payload: "This is simple data");
                deleteDatabase(id: element['id']);
              } else if (element['status'] == AppString.smaller &&
                  savePrice >= currencyPrice) {
                LocalNotifications.showSimpleNotification(
                    title: "Coin Money",
                    body: "سعر ${e['name']} وصل الي $savePrice جنيه",
                    payload: "This is simple data");
                deleteDatabase(id: element['id']);
              }
            }
          });
        }
      });
    }).catchError((e) {
      print(e);
    });
    // final response = json.decode(AppString.currencyJsons);
    // currencyList = [];
    // response.forEach((e) {
    //   currencyList.add(CurrencyBankModel.fromJson(e));
    //   if (currencyAlert.isNotEmpty) {
    //     currencyAlert.forEach((element) {
    //       if (element['name'] == e['name']) {
    //         if (element['status'] == AppString.greater) {
    //           double savePrice = double.parse(element['price']);
    //           double currencyPrice = double.parse(e['current_buy_price']);
    //           if (savePrice <= currencyPrice) {
    //             //todo notification
    //             LocalNotifications.showSimpleNotification(
    //                 title: "Coin Money",
    //                 body: "سعر ${e['name']} وصل الي $savePrice جنيه",
    //                 payload: "This is simple data");
    //              deleteDatabase(id: element['id']);
    //           }
    //         } else {
    //           double savePrice = double.parse(element['price']);
    //           double currencyPrice = double.parse(e['current_buy_price']);
    //           // showLocalNotification(title:'Coin Money Notification' ,body:'${element['name']} equal ${element['price']}' );
    //           if (savePrice >= currencyPrice) {
    //             //todo notification
    //             LocalNotifications.showSimpleNotification(
    //                 title: "Coin Money",
    //                 body: "سعر ${e['name']} وصل الي $savePrice  جنيه",
    //                 payload: "This is simple data");
    //             deleteDatabase(id: element['id']);
    //           }
    //         }
    //       }
    //     });
    //   }
    // });

    bankCurrencyStream.sink.add(currencyList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return currencyList;
  }

  Stream<List<CurrencyBankModel>> getBankCurrencyStream() =>
      Stream.periodic(Duration(seconds: 2))
          .asyncMap((_) => getCurrencyBankDate());

  /////////// Gold Code

  Future<List<GoldModel>> getGoldDate() async {
    final response = await Dio().get(AppString.goldUrl).then((value) {
      goldList = List<GoldModel>.from(
          (value.data as List).map((e) => GoldModel.fromJson(e)));
      value.data.forEach((e) {
        if (goldAlert.isNotEmpty) {
          for (var element in goldAlert) {
            if (element['name'] == e['name']) {
              double savePrice = double.parse(element['price']);
              double currencyPrice = double.parse(e['current_buy_price']);
              if (element['status'] == AppString.greater &&
                  savePrice <= currencyPrice) {
                //todo notification
                LocalNotifications.showSimpleNotification(
                    title: "Coin Money",
                    body: "سعر ${e['name']} وصل الي $savePrice جنيه",
                    payload: "This is simple data");
                deleteDatabase(id: element['id']);
              } else if (element['status'] == AppString.smaller &&
                  savePrice >= currencyPrice) {
                LocalNotifications.showSimpleNotification(
                    title: "Coin Money",
                    body: "سعر ${e['name']} وصل الي $savePrice جنيه",
                    payload: "This is simple data");
                deleteDatabase(id: element['id']);
              }
            }
          }
        }
      });
    }).catchError((e) {
      print(e);
    });

    // final response = json.decode(AppString.goldJsons);
    //  goldList = [];
    //  response.forEach((e) => goldList.add(GoldModel.fromJson(e)));
    goldStream.add(goldList);
    //currencyList = response.toList();

    return goldList;
  }

  Stream<List<GoldModel>> getGoldStream() =>
      Stream.periodic(Duration(seconds: 2)).asyncMap((_) => getGoldDate());

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
    final response = await Dio().get(AppString.silverUrl).then((value) {
      silverList = List<SilverModel>.from(
          (value.data as List).map((e) => SilverModel.fromJson(e)));
    }).catchError((e) {
      print(e);
    });
    // final response = json.decode(AppString.silverJson);
    // silverList = [];
    // response.forEach((e) => silverList.add(SilverModel.fromJson(e)));
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
    final response = await Dio().get(AppString.cryptoUrl).then((value) {
      cryptoList = List<CryptoModel>.from(
          (value.data as List).map((e) => CryptoModel.fromJson(e)));
    }).catchError((e) {
      print(e);
    });
    // final response = json.decode(AppString.cryptoJsons);
    // cryptoList = [];
    // response.forEach((e) => cryptoList.add(CryptoModel.fromJson(e)));
    cryptoStream.add(cryptoList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return cryptoList;
  }

  Stream<List<CryptoModel>> getCryptoStream() =>
      Stream.periodic(Duration(seconds: 2)).asyncMap((_) => getCryptoDate());

/////// stocks code

  Future<List<StocksModel>> getStocksDate() async {
    final response = await Dio().get(AppString.stockUrl).then((value) {
      stocksList = List<StocksModel>.from(
          (value.data as List).map((e) => StocksModel.fromJson(e)));
    }).catchError((e) {
      print(e);
    });
    // final response = json.decode(AppString.stocksJsons);
    //  stocksList = [];
    //  response.forEach((e) => stocksList.add(StocksModel.fromJson(e)));
    stocksStream.add(stocksList);
    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return stocksList;
  }

  Stream<List<StocksModel>> getStocksStream() =>
      Stream.periodic(Duration(seconds: 2)).asyncMap((_) => getStocksDate());

//////// currency ai model
  Future<List<Predictions>> getCurrencyAiData() async {
    // emit(GetCurrencyDateAiLoadingState());
    DateTime now = DateTime.now();
    var data = json.encode({
      "Day": 21,
      "Month": 6,
      "Year": 2024,
      "currency_ids": [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18
      ],
      "buy_prices": [
        47.268543,
        50.828199,
        58.987395,
        46.1123,
        7.0295,
        8.993,
        9.9392,
        52.010411,
        30.189173,
        12.529834,
        153.568597,
        12.822884,
        8.525874,
        154.00147,
        12.850874,
        6.525755,
        4.850874,
        2.525755
      ],
      "sell_prices": [
        47.367038,
        50.951208,
        59.137666,
        47.5505,
        7.0125,
        8.9972,
        9.9482,
        52.010411,
        30.112132,
        12.52111,
        152.1116,
        12.81011,
        8.52111,
        152.84511,
        12.8411,
        6.55255,
        4.8411,
        2.5257
      ]
    });
    final responce = await Dio()
        .request(AppString.currencyAiUrl,
            options: Options(method: 'POST'), data: data)
        .then((value) {
      // emit(GetCurrencyDateAiSuccessState());
      currencyAiList = List<Predictions>.from(
          (value.data['predictions'] as List)
              .map((e) => Predictions.fromJson(e)));
      print(currencyAiList[1].currency);
    }).catchError((e) {
      print(e);
      //   emit(GetCurrencyDateAiErrorState());
    });
    print(responce);
    return currencyAiList;
  }

  Future getGoldAiData() async {
    var data = json.encode({
      "Day": 19,
      "Month": 6,
      "Year": 2024,
      "14K - Local Price/Sell": 2083,
      "14K - Local Price/Buy": 2090,
      "24K - Global Price": 3573,
      "22K - Global Price": 3276,
      "21K - Global Price": 3127,
      "18K - Global Price": 2680,
      "14K - Global Price": 2084,
      "12K - Global Price": 1787,
      "9K - Global Price": 1340
    });
    var response = await Dio()
        .request(
      AppString.goldAiUrl,
      options: Options(
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
      ),
      data: data,
    )
        .then((value) {
      goldAiList = List<GoldAiModel>.from(
          (value.data as List).map((e) => GoldAiModel.fromJson(e)));
    }).catchError((e) {
      print(e.statusMessage);
    });
  }

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
      return '${duration.inHours} ${duration.inHours == 1 ? 'ساعة' : 'ساعات'} مضت';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} ${duration.inMinutes == 1 ? 'دقيقة' : 'دقائق'} مضت';
    } else {
      return 'الآن';
    }
  }

  void onListenerController() {
    emit(ControllerChangeState());
  }

  double scrollAnimation(
      int index, double itemSize, ScrollController scrollController) {
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

//////////////// authentication
  register(String name, String email, String password) async {
    var headers = {'Content-Type': 'application/json'};
    var data =
        json.encode({"name": name, "email": email, "password": password});
    var dio = Dio();
    emit(RegisterLoading());
    var response = await dio
        .request(
      AppString.registerUrl,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    )
        .then((value) {
      print(value);
      print('//////////[][]');
      emit(RegisterSuccess());
    }).catchError((e) {
      print(e);
      print('//////');
      emit(RegisterError());
    });
  }

  login(String email, String password) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var data = json.encode({"email": email, "password": password});
    var dio = Dio();
    emit(LoginLoading());
    var response = await dio
        .request(
      AppString.loginUrl,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    )
        .then((value) {
          SharedPrefrenceHelper.saveData(key: 'name', value: value.data['user']['name']);
          SharedPrefrenceHelper.saveData(key: 'email', value: value.data['user']['email']);
          SharedPrefrenceHelper.saveData(key: 'token', value: value.data['token']);
         print(value.data['user']['email']);

      emit(LoginSuccess());
    }).catchError((e) {
      print(e);
      emit(LoginError());
    });
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
      (txn) => txn
          .rawInsert(
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
    return await database
        .rawUpdate('DELETE FROM alert WHERE id = ?', [id]).then((value) {
      print('delete successfully');
      getFromDatabase(database);
      emit(UpdateDatabaseState());
    });
  }
}
