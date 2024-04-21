import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../core/string_manager.dart';
import '../pages/currency/model/currency_bank.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  StreamController<CurrencyBankModel> streamController = StreamController();

  Stream<List<CurrencyBankModel>> getCurrencyBankData() async* {
    while (true) {
      // Wait for some time before making the next API call
      await Future.delayed(Duration(seconds: 1));

      //final response = await Dio().get(AppString.currencyBankUrl);
      String jsons = '''[
    {
        "currency_id": 1,
        "name": "الدولار الأمريكي",
        "image": "https://banklive.net/flags/1x1/us.svg",
        "current_buy_price": "48.28",
        "current_buy_price_change": "-0.14",
        "current_sell_price": "48.38",
        "current_sell_price_change": "-0.14",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "48.28",
                "buy_rate_change": "-0.14",
                "sell_price": "48.38",
                "sell_rate_change": "-0.14"
            }
        ]
    },
    {
        "currency_id": 2,
        "name": "اليورو",
        "image": "https://banklive.net/flags/1x1/eu.svg",
        "current_buy_price": "51.4906",
        "current_buy_price_change": "-0.1493",
        "current_sell_price": "51.7134",
        "current_sell_price_change": "-0.1496",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "51.4906",
                "buy_rate_change": "-0.1493",
                "sell_price": "51.7134",
                "sell_rate_change": "-0.1496"
            }
        ]
    },
    {
        "currency_id": 3,
        "name": "الجنيه الإسترليني",
        "image": "https://banklive.net/flags/1x1/gb.svg",
        "current_buy_price": "60.0989",
        "current_buy_price_change": "-0.1743",
        "current_sell_price": "60.3976",
        "current_sell_price_change": "-0.1748",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "60.0989",
                "buy_rate_change": "-0.1743",
                "sell_price": "60.3976",
                "sell_rate_change": "-0.1748"
            }
        ]
    },
    {
        "currency_id": 4,
        "name": "الفرنك السويسري",
        "image": "https://banklive.net/flags/1x1/ch.svg",
        "current_buy_price": "52.9909",
        "current_buy_price_change": "-0.1537",
        "current_sell_price": "53.2702",
        "current_sell_price_change": "-0.1542",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "52.9909",
                "buy_rate_change": "-0.1537",
                "sell_price": "53.2702",
                "sell_rate_change": "-0.1542"
            }
        ]
    },
    {
        "currency_id": 5,
        "name": "الدينار الكويتي",
        "image": "https://banklive.net/flags/1x1/kw.svg",
        "current_buy_price": "156.7787",
        "current_buy_price_change": "-0.4546",
        "current_sell_price": "157.1034",
        "current_sell_price_change": "-0.4546",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "156.7787",
                "buy_rate_change": "-0.4546",
                "sell_price": "157.1034",
                "sell_rate_change": "-0.4546"
            }
        ]
    },
    {
        "currency_id": 6,
        "name": "الريال السعودي",
        "image": "https://banklive.net/flags/1x1/sa.svg",
        "current_buy_price": "12.8712",
        "current_buy_price_change": "-0.0374",
        "current_sell_price": "12.8993",
        "current_sell_price_change": "-0.0373",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "12.8712",
                "buy_rate_change": "-0.0374",
                "sell_price": "12.8993",
                "sell_rate_change": "-0.0373"
            }
        ]
    },
    {
        "currency_id": 7,
        "name": "الدينار الاردني",
        "image": "https://banklive.net/flags/1x1/jo.svg",
        "current_buy_price": "67.5765",
        "current_buy_price_change": "-0.1959",
        "current_sell_price": "68.2755",
        "current_sell_price_change": "-0.1975",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "67.5765",
                "buy_rate_change": "-0.1959",
                "sell_price": "68.2755",
                "sell_rate_change": "-0.1975"
            }
        ]
    },
    {
        "currency_id": 8,
        "name": "الدينار البحريني",
        "image": "https://banklive.net/flags/1x1/bh.svg",
        "current_buy_price": "126.7424",
        "current_buy_price_change": "-0.3676",
        "current_sell_price": "128.3289",
        "current_sell_price_change": "-0.3714",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "126.7424",
                "buy_rate_change": "-0.3676",
                "sell_price": "128.3289",
                "sell_rate_change": "-0.3714"
            }
        ]
    },
    {
        "currency_id": 9,
        "name": "الريال القطري",
        "image": "https://banklive.net/flags/1x1/qa.svg",
        "current_buy_price": "12.285",
        "current_buy_price_change": "-0.0356",
        "current_sell_price": "13.2872",
        "current_sell_price_change": "-0.0384",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "12.285",
                "buy_rate_change": "-0.0356",
                "sell_price": "13.2872",
                "sell_rate_change": "-0.0384"
            }
        ]
    },
    {
        "currency_id": 10,
        "name": "الريال العماني",
        "image": "https://banklive.net/flags/1x1/om.svg",
        "current_buy_price": "124.1626",
        "current_buy_price_change": "-0.36",
        "current_sell_price": "125.6656",
        "current_sell_price_change": "-0.3636",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "124.1626",
                "buy_rate_change": "-0.36",
                "sell_price": "125.6656",
                "sell_rate_change": "-0.3636"
            }
        ]
    },
    {
        "currency_id": 11,
        "name": "الدرهم الاماراتي",
        "image": "https://banklive.net/flags/1x1/ae.svg",
        "current_buy_price": "13.1607",
        "current_buy_price_change": "-0.0382",
        "current_sell_price": "13.1732",
        "current_sell_price_change": "-0.0381",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "13.1607",
                "buy_rate_change": "-0.0382",
                "sell_price": "13.1732",
                "sell_rate_change": "-0.0381"
            }
        ]
    },
    {
        "currency_id": 12,
        "name": "الدولار الكندي",
        "image": "https://banklive.net/flags/1x1/ca.svg",
        "current_buy_price": "35.0414",
        "current_buy_price_change": "-0.1016",
        "current_sell_price": "35.2034",
        "current_sell_price_change": "-0.1018",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "35.0414",
                "buy_rate_change": "-0.1016",
                "sell_price": "35.2034",
                "sell_rate_change": "-0.1018"
            }
        ]
    },
    {
        "currency_id": 13,
        "name": "الدولار الاسترالي",
        "image": "https://banklive.net/flags/1x1/au.svg",
        "current_buy_price": "31.0537",
        "current_buy_price_change": "-0.09",
        "current_sell_price": "31.2341",
        "current_sell_price_change": "-0.0904",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "31.0537",
                "buy_rate_change": "-0.09",
                "sell_price": "31.2341",
                "sell_rate_change": "-0.0904"
            }
        ]
    },
    {
        "currency_id": 14,
        "name": "الين الياباني",
        "image": "https://banklive.net/flags/1x1/jp.svg",
        "current_buy_price": "0.3125",
        "current_buy_price_change": "-0.0009",
        "current_sell_price": "0.3142",
        "current_sell_price_change": "-0.0009",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "0.3125",
                "buy_rate_change": "-0.0009",
                "sell_price": "0.3142",
                "sell_rate_change": "-0.0009"
            }
        ]
    },
    {
        "currency_id": 15,
        "name": "النرويج كرونة",
        "image": "https://banklive.net/flags/1x1/no.svg",
        "current_buy_price": "4.3814",
        "current_buy_price_change": "-0.0127",
        "current_sell_price": "4.4144",
        "current_sell_price_change": "-0.0127",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "4.3814",
                "buy_rate_change": "-0.0127",
                "sell_price": "4.4144",
                "sell_rate_change": "-0.0127"
            }
        ]
    }
]''';

      final response = json.decode(jsons);
      yield List<CurrencyBankModel>.from((response.data as List)
          .map((e) => CurrencyBankModel.fromJson(response.data)));
      print('success////////');
      // if (response.statusCode == 200) {
      //  // yield CurrencyBank.fromJson(response.data);
      //   // yield List<CurrencyBank>.from((response.data as List)
      //   //     .map((e) => CurrencyBank.fromJson(response.data)));
      // } else {
      //   // Handle the error or throw an exception
      //   throw Exception('Failed to load data');
      // }
    }
  }

  List <CurrencyBankModel>? dataList ;

  void getDate() {
    String jsons = '''[
    {
        "currency_id": 1,
        "name": "الدولار الأمريكي",
        "image": "https://banklive.net/flags/1x1/us.svg",
        "current_buy_price": "48.28",
        "current_buy_price_change": "-0.14",
        "current_sell_price": "48.38",
        "current_sell_price_change": "-0.14",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "48.28",
                "buy_rate_change": "-0.14",
                "sell_price": "48.38",
                "sell_rate_change": "-0.14"
            }
        ]
    },
    {
        "currency_id": 2,
        "name": "اليورو",
        "image": "https://banklive.net/flags/1x1/eu.svg",
        "current_buy_price": "51.4906",
        "current_buy_price_change": "-0.1493",
        "current_sell_price": "51.7134",
        "current_sell_price_change": "-0.1496",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "51.4906",
                "buy_rate_change": "-0.1493",
                "sell_price": "51.7134",
                "sell_rate_change": "-0.1496"
            }
        ]
    },
    {
        "currency_id": 3,
        "name": "الجنيه الإسترليني",
        "image": "https://banklive.net/flags/1x1/gb.svg",
        "current_buy_price": "60.0989",
        "current_buy_price_change": "-0.1743",
        "current_sell_price": "60.3976",
        "current_sell_price_change": "-0.1748",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "60.0989",
                "buy_rate_change": "-0.1743",
                "sell_price": "60.3976",
                "sell_rate_change": "-0.1748"
            }
        ]
    },
    {
        "currency_id": 4,
        "name": "الفرنك السويسري",
        "image": "https://banklive.net/flags/1x1/ch.svg",
        "current_buy_price": "52.9909",
        "current_buy_price_change": "-0.1537",
        "current_sell_price": "53.2702",
        "current_sell_price_change": "-0.1542",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "52.9909",
                "buy_rate_change": "-0.1537",
                "sell_price": "53.2702",
                "sell_rate_change": "-0.1542"
            }
        ]
    },
    {
        "currency_id": 5,
        "name": "الدينار الكويتي",
        "image": "https://banklive.net/flags/1x1/kw.svg",
        "current_buy_price": "156.7787",
        "current_buy_price_change": "-0.4546",
        "current_sell_price": "157.1034",
        "current_sell_price_change": "-0.4546",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "156.7787",
                "buy_rate_change": "-0.4546",
                "sell_price": "157.1034",
                "sell_rate_change": "-0.4546"
            }
        ]
    },
    {
        "currency_id": 6,
        "name": "الريال السعودي",
        "image": "https://banklive.net/flags/1x1/sa.svg",
        "current_buy_price": "12.8712",
        "current_buy_price_change": "-0.0374",
        "current_sell_price": "12.8993",
        "current_sell_price_change": "-0.0373",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "12.8712",
                "buy_rate_change": "-0.0374",
                "sell_price": "12.8993",
                "sell_rate_change": "-0.0373"
            }
        ]
    },
    {
        "currency_id": 7,
        "name": "الدينار الاردني",
        "image": "https://banklive.net/flags/1x1/jo.svg",
        "current_buy_price": "67.5765",
        "current_buy_price_change": "-0.1959",
        "current_sell_price": "68.2755",
        "current_sell_price_change": "-0.1975",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "67.5765",
                "buy_rate_change": "-0.1959",
                "sell_price": "68.2755",
                "sell_rate_change": "-0.1975"
            }
        ]
    },
    {
        "currency_id": 8,
        "name": "الدينار البحريني",
        "image": "https://banklive.net/flags/1x1/bh.svg",
        "current_buy_price": "126.7424",
        "current_buy_price_change": "-0.3676",
        "current_sell_price": "128.3289",
        "current_sell_price_change": "-0.3714",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "126.7424",
                "buy_rate_change": "-0.3676",
                "sell_price": "128.3289",
                "sell_rate_change": "-0.3714"
            }
        ]
    },
    {
        "currency_id": 9,
        "name": "الريال القطري",
        "image": "https://banklive.net/flags/1x1/qa.svg",
        "current_buy_price": "12.285",
        "current_buy_price_change": "-0.0356",
        "current_sell_price": "13.2872",
        "current_sell_price_change": "-0.0384",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "12.285",
                "buy_rate_change": "-0.0356",
                "sell_price": "13.2872",
                "sell_rate_change": "-0.0384"
            }
        ]
    },
    {
        "currency_id": 10,
        "name": "الريال العماني",
        "image": "https://banklive.net/flags/1x1/om.svg",
        "current_buy_price": "124.1626",
        "current_buy_price_change": "-0.36",
        "current_sell_price": "125.6656",
        "current_sell_price_change": "-0.3636",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "124.1626",
                "buy_rate_change": "-0.36",
                "sell_price": "125.6656",
                "sell_rate_change": "-0.3636"
            }
        ]
    },
    {
        "currency_id": 11,
        "name": "الدرهم الاماراتي",
        "image": "https://banklive.net/flags/1x1/ae.svg",
        "current_buy_price": "13.1607",
        "current_buy_price_change": "-0.0382",
        "current_sell_price": "13.1732",
        "current_sell_price_change": "-0.0381",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "13.1607",
                "buy_rate_change": "-0.0382",
                "sell_price": "13.1732",
                "sell_rate_change": "-0.0381"
            }
        ]
    },
    {
        "currency_id": 12,
        "name": "الدولار الكندي",
        "image": "https://banklive.net/flags/1x1/ca.svg",
        "current_buy_price": "35.0414",
        "current_buy_price_change": "-0.1016",
        "current_sell_price": "35.2034",
        "current_sell_price_change": "-0.1018",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "35.0414",
                "buy_rate_change": "-0.1016",
                "sell_price": "35.2034",
                "sell_rate_change": "-0.1018"
            }
        ]
    },
    {
        "currency_id": 13,
        "name": "الدولار الاسترالي",
        "image": "https://banklive.net/flags/1x1/au.svg",
        "current_buy_price": "31.0537",
        "current_buy_price_change": "-0.09",
        "current_sell_price": "31.2341",
        "current_sell_price_change": "-0.0904",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "31.0537",
                "buy_rate_change": "-0.09",
                "sell_price": "31.2341",
                "sell_rate_change": "-0.0904"
            }
        ]
    },
    {
        "currency_id": 14,
        "name": "الين الياباني",
        "image": "https://banklive.net/flags/1x1/jp.svg",
        "current_buy_price": "0.3125",
        "current_buy_price_change": "-0.0009",
        "current_sell_price": "0.3142",
        "current_sell_price_change": "-0.0009",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "0.3125",
                "buy_rate_change": "-0.0009",
                "sell_price": "0.3142",
                "sell_rate_change": "-0.0009"
            }
        ]
    },
    {
        "currency_id": 15,
        "name": "النرويج كرونة",
        "image": "https://banklive.net/flags/1x1/no.svg",
        "current_buy_price": "4.3814",
        "current_buy_price_change": "-0.0127",
        "current_sell_price": "4.4144",
        "current_sell_price_change": "-0.0127",
        "scraped_at": "2024-04-20 22:13:45",
        "prices": [
            {
                "buy_price": "4.3814",
                "buy_rate_change": "-0.0127",
                "sell_price": "4.4144",
                "sell_rate_change": "-0.0127"
            }
        ]
    }
]''';
    final response = json.decode(jsons);
  // dataList= List<CurrencyBankModel>.from((response.data as List).map((e) => CurrencyBankModel.fromJson(e) ));


    print('//////////////////');
    print(response);
  }
}
