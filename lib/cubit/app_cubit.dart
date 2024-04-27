import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:money/pages/crypto/model/crypto_model.dart';
import 'package:money/pages/crypto/model/stocks_model.dart';
import 'package:money/pages/crypto/page/crypto_view.dart';
import 'package:money/pages/gold/model/silver_model.dart';
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

  late Stream<List<CurrencyBankModel>> bankCurrencyStream;
  late Stream<List<CurrencyBlackMarketModel>> blackMarketCurrencyStream;
  late Stream<List<GoldModel>> goldStream;
  late Stream<List<SilverModel>> silverStream;
  late Stream<List<CryptoModel>> cryptoStream;
  late Stream<List<StocksModel>> stocksStream;

  void initialFunction() {
    currencyScrollController.addListener(onListenerController);
    blackMarketScrollController.addListener(onListenerController);
    goldScrollController.addListener(onListenerController);
    silverScrollController.addListener(onListenerController);
    cryptoScrollController.addListener(onListenerController);
    stocksScrollController.addListener(onListenerController);

    bankCurrencyStream = getBankCurrencyStream();
    blackMarketCurrencyStream = getBlackMarketCurrencyStream();
    goldStream = getGoldStream();
    silverStream = getSilverStream();
    cryptoStream = getCryptoStream();
    stocksStream = getStocksStream();
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

  Future<List<CurrencyBankModel>> getCurrencyBankDate() async {
    // final response = await Dio().get(AppString.currencyBankUrl).then((value) {
    //   currencyList= List<CurrencyBankModel>.from((value.data as List)
    //       .map((e) => CurrencyBankModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.currencyJsons);
    currencyList = [];
    response.forEach((e) => currencyList.add(CurrencyBankModel.fromJson(e)));

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
    // final response = await Dio().get(AppString.currencyBankUrl).then((value) {
    //   currencyBlackMarketList= List<CurrencyBlackMarketModel>.from((value.data as List)
    //       .map((e) => CurrencyBlackMarketModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.blackMarketJson);
    currencyBlackMarketList = [];
    response.forEach((e) =>
        currencyBlackMarketList.add(CurrencyBlackMarketModel.fromJson(e)));

    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return currencyBlackMarketList;
  }

  Stream<List<CurrencyBlackMarketModel>> getBlackMarketCurrencyStream() =>
      Stream.periodic(Duration(seconds: 5))
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
    //  goldList= List<GoldModel>.from((value.data as List)
    //        .map((e) => GoldModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });

    final response = json.decode(AppString.goldJsons);
    goldList = [];
    response.forEach((e) => goldList.add(GoldModel.fromJson(e)));

    //currencyList = response.toList();
    //print('//////////////////');
    // print(response.data);
    // print(goldList);
    return goldList;
  }

  Stream<List<GoldModel>> getGoldStream() =>
      Stream.periodic(Duration(seconds: 3)).asyncMap((_) => getGoldDate());

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
    //   silverList= List<SilverModel>.from((value.data as List)
    //       .map((e) => SilverModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.silverJson);
    silverList = [];
    response.forEach((e) => silverList.add(SilverModel.fromJson(e)));

    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return silverList;
  }

  Stream<List<SilverModel>> getSilverStream() =>
      Stream.periodic(Duration(seconds: 3)).asyncMap((_) => getSilverDate());

/////////// crypto code

  Future<List<CryptoModel>> getCryptoDate() async {
    // final response = await Dio().get(AppString.silverUrl).then((value) {
    //   cryptoList= List<CryptoModel>.from((value.data as List)
    //       .map((e) => CryptoModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.cryptoJsons);
    cryptoList = [];
    response.forEach((e) => cryptoList.add(CryptoModel.fromJson(e)));

    //currencyList = response.toList();
    // print('//////////////////');
    // print(response);
    return cryptoList;
  }

  Stream<List<CryptoModel>> getCryptoStream() =>
      Stream.periodic(Duration(seconds: 3)).asyncMap((_) => getCryptoDate());

/////// stocks code

  Future<List<StocksModel>> getStocksDate() async {
    // final response = await Dio().get(AppString.silverUrl).then((value) {
    //   cryptoList= List<CryptoModel>.from((value.data as List)
    //       .map((e) => CryptoModel.fromJson(e)));
    // }).catchError((e) {
    //   print(e);
    // });
    final response = json.decode(AppString.stocksJsons);
    stocksList = [];
    response.forEach((e) => stocksList.add(StocksModel.fromJson(e)));

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
      return '${duration.inHours} ${duration.inHours == 1 ? 'ساعة' : 'ساعات'} مضت';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} دقيقة${duration.inMinutes == 1 ? 'دقيقة' : 'دقائق'} مضت';
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
