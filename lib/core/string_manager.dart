class AppString {
  static const appName = 'CoinMoney';

  static const noRouteFound = 'NO Route Found';
  static const onBoardingTitle1 = 'SEE THE BEST COURES #1';
  static const onBoardingTitle2 = 'SEE THE BEST COURES #2';
  static const onBoardingTitle3 = 'SEE THE BEST COURES #3';
  static const onBoardingTitle4 = 'SEE THE BEST COURES #4';

  static const onBoardingSubTitle1 =
      'Tut app is an awesome flutter application using clean architecture #1';
  static const onBoardingSubTitle2 =
      'Tut app is an awesome flutter application using clean architecture #2';
  static const onBoardingSubTitle3 =
      'Tut app is an awesome flutter application using clean architecture #3';
  static const onBoardingSubTitle4 =
      'Tut app is an awesome flutter application using clean architecture #4';
  static const skip = 'Skip';
  static const next = 'Next';

  // login screen

  static const loginToYourAccount = 'Login to your Account';
  static const email = 'Email';
  static const password = 'password';
  static const forgotPassword = 'forgot your password?';
  static const clickHere = 'Click Here';
  static const signIn = 'Sign In';
  static const orSignInUsing = 'or sign In using';
  static const facebook = 'Facebook';
  static const google = 'Google';
  static const byCreatingAnAccount =
      'By creating an account, you are agree to our Terms';
  static const haveAnAccount = 'Have An Account?';

  // signUp screen
  static const signUp = 'Sign Up';
  static const fullName = 'Full Name';
  static const phone = 'Phone';

  // URL
  static const baseUrl = 'http://45.244.225.244:8000/api';
  static const currencyBankUrl = '$baseUrl/return_currency_details_in_bank';
  static const goldUrl = '$baseUrl/return_gold_details';
  static const silverUrl = '$baseUrl/return_silver_details';

  static const currencyJsons = '''[
    {
        "currency_id": 1,
        "name": "الدولار الأمريكي",
        "image": "https://banklive.net/flags/1x1/us.svg",
        "current_buy_price": "48.28",
        "current_buy_price_change": "0.14",
        "current_sell_price": "48.38",
        "current_sell_price_change": "-0.14",
        "scraped_at": "2024-04-23 11:12:45",
        "prices": [
            {
                "buy_price": "48.28",
                "buy_rate_change": "-0.14",
                "sell_price": "48.38",
                "sell_rate_change": "-0.14"
            },{
                "buy_price": "38.28",
                "buy_rate_change": "-0.14",
                "sell_price": "38.38",
                "sell_rate_change": "-0.14"
            } ,{
                "buy_price": "58.28",
                "buy_rate_change": "-0.14",
                "sell_price": "58.38",
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
  static const blackMarketJson = '''[
    {
        "currency_id": 1,
        "name": "US Dollar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/USD.png",
        "current_buy_price": "49.51",
        "current_buy_price_color": "red",
        "current_sell_price": "49.01",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "49.51",
                "buy_price_color": "red",
                "sell_price": "49.01",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 2,
        "name": "Saudi Riyal",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/SAR.png",
        "current_buy_price": "13.2",
        "current_buy_price_color": "red",
        "current_sell_price": "13.07",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "13.2",
                "buy_price_color": "red",
                "sell_price": "13.07",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 3,
        "name": "Euro",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/EUR.png",
        "current_buy_price": "52.88",
        "current_buy_price_color": "red",
        "current_sell_price": "52.34",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "52.88",
                "buy_price_color": "red",
                "sell_price": "52.34",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 4,
        "name": "UAE Dirham",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/AED.png",
        "current_buy_price": "13.48",
        "current_buy_price_color": "red",
        "current_sell_price": "13.34",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "13.48",
                "buy_price_color": "red",
                "sell_price": "13.34",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 5,
        "name": "Kuwaiti Dinar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/KWD.png",
        "current_buy_price": "160.68",
        "current_buy_price_color": "red",
        "current_sell_price": "159.06",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "160.68",
                "buy_price_color": "red",
                "sell_price": "159.06",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 6,
        "name": "Pound Sterling",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/GBP.png",
        "current_buy_price": "61.77",
        "current_buy_price_color": "red",
        "current_sell_price": "61.15",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "61.77",
                "buy_price_color": "red",
                "sell_price": "61.15",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 7,
        "name": "Omani Riyal",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/OMR.png",
        "current_buy_price": "128.93",
        "current_buy_price_color": "red",
        "current_sell_price": "127.63",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "128.93",
                "buy_price_color": "red",
                "sell_price": "127.63",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 8,
        "name": "Qatari Riyal",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/QAR.png",
        "current_buy_price": "13.58",
        "current_buy_price_color": "red",
        "current_sell_price": "13.44",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "13.58",
                "buy_price_color": "red",
                "sell_price": "13.44",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 9,
        "name": "Chinese Yuan",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/CNY.png",
        "current_buy_price": "6.84",
        "current_buy_price_color": "red",
        "current_sell_price": "6.77",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "6.84",
                "buy_price_color": "red",
                "sell_price": "6.77",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 10,
        "name": "Jordanian Dinar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/JOD.png",
        "current_buy_price": "69.93",
        "current_buy_price_color": "red",
        "current_sell_price": "69.22",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "69.93",
                "buy_price_color": "red",
                "sell_price": "69.22",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 11,
        "name": "Bahraini Dinar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/BHD.png",
        "current_buy_price": "131.33",
        "current_buy_price_color": "red",
        "current_sell_price": "130",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "131.33",
                "buy_price_color": "red",
                "sell_price": "130",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 12,
        "name": "Canadian Dollar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/CAD.png",
        "current_buy_price": "36.01",
        "current_buy_price_color": "red",
        "current_sell_price": "35.64",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "36.01",
                "buy_price_color": "red",
                "sell_price": "35.64",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 13,
        "name": "Australian Dollar",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/AUD.png",
        "current_buy_price": "31.92",
        "current_buy_price_color": "red",
        "current_sell_price": "31.6",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "31.92",
                "buy_price_color": "red",
                "sell_price": "31.6",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 14,
        "name": "Japanese Yen",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/JPY.png",
        "current_buy_price": "0.32",
        "current_buy_price_color": "dark",
        "current_sell_price": "0.32",
        "current_sell_price_color": "dark",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "0.32",
                "buy_price_color": "dark",
                "sell_price": "0.32",
                "sell_price_color": "dark"
            }
        ]
    },
    {
        "currency_id": 15,
        "name": "Swiss Franc",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/CHF.png",
        "current_buy_price": "54.5",
        "current_buy_price_color": "red",
        "current_sell_price": "53.95",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "54.5",
                "buy_price_color": "red",
                "sell_price": "53.95",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 16,
        "name": "Swedish Krona",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/SEK.png",
        "current_buy_price": "4.54",
        "current_buy_price_color": "red",
        "current_sell_price": "4.5",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "4.54",
                "buy_price_color": "red",
                "sell_price": "4.5",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 17,
        "name": "Norwegian Krone",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/NOK.png",
        "current_buy_price": "4.5",
        "current_buy_price_color": "red",
        "current_sell_price": "4.46",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "4.5",
                "buy_price_color": "red",
                "sell_price": "4.46",
                "sell_price_color": "red"
            }
        ]
    },
    {
        "currency_id": 18,
        "name": "Danish Krone",
        "image": "https://egcurrency.com/theme/img/icons/currency/cache/22x22/DKK.png",
        "current_buy_price": "7.09",
        "current_buy_price_color": "red",
        "current_sell_price": "7.01",
        "current_sell_price_color": "red",
        "scraped_at": "2024-04-20 22:14:57",
        "prices": [
            {
                "buy_price": "7.09",
                "buy_price_color": "red",
                "sell_price": "7.01",
                "sell_price_color": "red"
            }
        ]
    }
] ''';
  static const goldJsons = '''[
    {
        "gold_id": 1,
        "name": "ذهب عيار 24",
        "current_buy_price": "3726",
        "current_sell_price": "3706",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "3726",
                "sell_price": "3706"
            }
        ]
    },
    {
        "gold_id": 2,
        "name": "ذهب عيار 22",
        "current_buy_price": "3416",
        "current_sell_price": "3397",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "3416",
                "sell_price": "3397"
            }
        ]
    },
    {
        "gold_id": 3,
        "name": "ذهب عيار 21",
        "current_buy_price": "3260",
        "current_sell_price": "3243",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "3260",
                "sell_price": "3243"
            }
        ]
    },
    {
        "gold_id": 4,
        "name": "ذهب عيار 18",
        "current_buy_price": "2794",
        "current_sell_price": "2780",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "2794",
                "sell_price": "2780"
            }
        ]
    },
    {
        "gold_id": 5,
        "name": "ذهب عيار 12",
        "current_buy_price": "1863",
        "current_sell_price": "1853",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "1863",
                "sell_price": "1853"
            }
        ]
    },
    {
        "gold_id": 6,
        "name": "أونصة الذهب",
        "current_buy_price": "115892",
        "current_sell_price": "115269",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "115892",
                "sell_price": "115269"
            }
        ]
    },
    {
        "gold_id": 7,
        "name": "جنيه الذهب",
        "current_buy_price": "26080",
        "current_sell_price": "25944",
        "scraped_at": "2024-04-20 22:15:27",
        "prices": [
            {
                "buy_price": "26080",
                "sell_price": "25944"
            }
        ]
    }
] ''';
  static const stocksJsons='''[
    {
        "symbol": "BTC-USD",
        "company_name": "Bitcoin USD",
        "last_price": "64,969.02",
        "change": "+866.29",
        "change_percent": "+1.35%",
        "market_time": "8:16PM UTC",
        "volume": "25.189B",
        "market_cap": "1.279T"
    },
    {
        "symbol": "SHIB-USD",
        "company_name": "Shiba Inu USD",
        "last_price": "0.000026",
        "change": "+0.000003",
        "change_percent": "+12.58%",
        "market_time": "8:15PM UTC",
        "volume": "721.398M",
        "market_cap": "15.118B"
    },
    {
        "symbol": "ETH-USD",
        "company_name": "Ethereum USD",
        "last_price": "3,163.17",
        "change": "+74.14",
        "change_percent": "+2.40%",
        "market_time": "8:15PM UTC",
        "volume": "10.686B",
        "market_cap": "379.808B"
    },
    {
        "symbol": "DOGE-USD",
        "company_name": "Dogecoin USD",
        "last_price": "0.162663",
        "change": "+0.009127",
        "change_percent": "+5.94%",
        "market_time": "8:16PM UTC",
        "volume": "1.728B",
        "market_cap": "23.418B"
    },
    {
        "symbol": "BTC-CAD",
        "company_name": "Bitcoin CAD",
        "last_price": "89,361.64",
        "change": "+1,191.55",
        "change_percent": "+1.35%",
        "market_time": "8:15PM UTC",
        "volume": "34.647B",
        "market_cap": "1.759T"
    },
    {
        "symbol": "SOL-USD",
        "company_name": "Solana USD",
        "last_price": "152.06",
        "change": "+7.29",
        "change_percent": "+5.04%",
        "market_time": "8:15PM UTC",
        "volume": "2.956B",
        "market_cap": "67.942B"
    },
    {
        "symbol": "SHIB-CAD",
        "company_name": "Shiba Inu CAD",
        "last_price": "0.000035",
        "change": "+0.000004",
        "change_percent": "+12.58%",
        "market_time": "8:15PM UTC",
        "volume": "992.247M",
        "market_cap": "20.794B"
    },
    {
        "symbol": "XRP-USD",
        "company_name": "XRP USD",
        "last_price": "0.528753",
        "change": "+0.022730",
        "change_percent": "+4.49%",
        "market_time": "8:16PM UTC",
        "volume": "1.337B",
        "market_cap": "29.15B"
    },
    {
        "symbol": "ADA-USD",
        "company_name": "Cardano USD",
        "last_price": "0.505340",
        "change": "+0.034254",
        "change_percent": "+7.27%",
        "market_time": "8:15PM UTC",
        "volume": "547.079M",
        "market_cap": "18.003B"
    },
    {
        "symbol": "BTC-EUR",
        "company_name": "Bitcoin EUR",
        "last_price": "60,932.23",
        "change": "+812.47",
        "change_percent": "+1.35%",
        "market_time": "8:15PM UTC",
        "volume": "23.624B",
        "market_cap": "1.2T"
    },
    {
        "symbol": "PEPE24478-USD",
        "company_name": "Pepe USD",
        "last_price": "0.00000582",
        "change": "+0.00000067",
        "change_percent": "+13.00%",
        "market_time": "8:13PM UTC",
        "volume": "568.303M",
        "market_cap": "2.45B"
    },
    {
        "symbol": "ETH-CAD",
        "company_name": "Ethereum CAD",
        "last_price": "4,350.78",
        "change": "+101.98",
        "change_percent": "+2.40%",
        "market_time": "8:15PM UTC",
        "volume": "14.697B",
        "market_cap": "522.407B"
    },
    {
        "symbol": "DOGE-CAD",
        "company_name": "Dogecoin CAD",
        "last_price": "0.223735",
        "change": "+0.012553",
        "change_percent": "+5.94%",
        "market_time": "8:15PM UTC",
        "volume": "2.377B",
        "market_cap": "32.21B"
    },
    {
        "symbol": "BCH-USD",
        "company_name": "Bitcoin Cash USD",
        "last_price": "513.97",
        "change": "+31.63",
        "change_percent": "+6.56%",
        "market_time": "8:15PM UTC",
        "volume": "498.028M",
        "market_cap": "10.122B"
    },
    {
        "symbol": "BONK-USD",
        "company_name": "Bonk USD",
        "last_price": "0.000019",
        "change": "+0.000004",
        "change_percent": "+24.66%",
        "market_time": "8:14PM UTC",
        "volume": "159.866M",
        "market_cap": "1.218B"
    },
    {
        "symbol": "LINK-USD",
        "company_name": "Chainlink USD",
        "last_price": "15.00",
        "change": "+1.02",
        "change_percent": "+7.29%",
        "market_time": "8:15PM UTC",
        "volume": "324.008M",
        "market_cap": "8.805B"
    },
    {
        "symbol": "XRP-CAD",
        "company_name": "XRP CAD",
        "last_price": "0.727273",
        "change": "+0.031263",
        "change_percent": "+4.49%",
        "market_time": "8:15PM UTC",
        "volume": "1.839B",
        "market_cap": "40.094B"
    },
    {
        "symbol": "FET-USD",
        "company_name": "Fetch.ai USD",
        "last_price": "2.4795",
        "change": "+0.3450",
        "change_percent": "+16.16%",
        "market_time": "8:15PM UTC",
        "volume": "293.266M",
        "market_cap": "2.104B"
    },
    {
        "symbol": "JEPI",
        "company_name": "JPMorgan Equity Premium Income ETF",
        "last_price": "55.45",
        "change": "-0.02",
        "change_percent": "-0.04%",
        "market_time": "4:00PM EDT",
        "volume": "3.185M",
        "market_cap": "N/A"
    },
    {
        "symbol": "SOL-CAD",
        "company_name": "Solana CAD",
        "last_price": "209.15",
        "change": "+10.03",
        "change_percent": "+5.04%",
        "market_time": "8:15PM UTC",
        "volume": "4.066B",
        "market_cap": "93.45B"
    },
    {
        "symbol": "MATIC-USD",
        "company_name": "Polygon USD",
        "last_price": "0.738423",
        "change": "+0.063438",
        "change_percent": "+9.40%",
        "market_time": "8:15PM UTC",
        "volume": "255.335M",
        "market_cap": "7.307B"
    },
    {
        "symbol": "VGR",
        "company_name": "Vector Group Ltd.",
        "last_price": "10.28",
        "change": "+0.24",
        "change_percent": "+2.39%",
        "market_time": "4:00PM EDT",
        "volume": "1.104M",
        "market_cap": "1.621B"
    },
    {
        "symbol": "LTC-USD",
        "company_name": "Litecoin USD",
        "last_price": "85.36",
        "change": "+4.13",
        "change_percent": "+5.08%",
        "market_time": "8:16PM UTC",
        "volume": "357.744M",
        "market_cap": "6.355B"
    },
    {
        "symbol": "ICP-USD",
        "company_name": "Internet Computer USD",
        "last_price": "15.24",
        "change": "+1.29",
        "change_percent": "+9.21%",
        "market_time": "8:16PM UTC",
        "volume": "221.364M",
        "market_cap": "7.054B"
    },
    {
        "symbol": "MMM",
        "company_name": "3M Company",
        "last_price": "92.27",
        "change": "+0.79",
        "change_percent": "+0.86%",
        "market_time": "4:01PM EDT",
        "volume": "2.925M",
        "market_cap": "51.059B"
    },
    {
        "symbol": "VYM",
        "company_name": "Vanguard High Dividend Yield Index Fund ETF Shares",
        "last_price": "115.94",
        "change": "+0.97",
        "change_percent": "+0.84%",
        "market_time": "4:00PM EDT",
        "volume": "1.042M",
        "market_cap": "N/A"
    },
    {
        "symbol": "FXAIX",
        "company_name": "Fidelity 500 Index",
        "last_price": "172.54",
        "change": "-1.51",
        "change_percent": "-0.87%",
        "market_time": "8:01PM EDT",
        "volume": "N/A",
        "market_cap": "N/A"
    },
    {
        "symbol": "EURUSD=X",
        "company_name": "EUR/USD",
        "last_price": "1.0661",
        "change": "+0.0015",
        "change_percent": "+0.14%",
        "market_time": "10:29PM BST",
        "volume": "0",
        "market_cap": "N/A"
    },
    {
        "symbol": "SBUX",
        "company_name": "Starbucks Corporation",
        "last_price": "87.61",
        "change": "+0.46",
        "change_percent": "+0.53%",
        "market_time": "4:00PM EDT",
        "volume": "11.635M",
        "market_cap": "99.194B"
    },
    {
        "symbol": "O",
        "company_name": "Realty Income Corporation",
        "last_price": "53.04",
        "change": "+1.01",
        "change_percent": "+1.94%",
        "market_time": "4:00PM EDT",
        "volume": "6.605M",
        "market_cap": "45.675B"
    }
] ''';
  static const cryptoJsons = '''[
    {
        "symbol": "BTC-USD",
        "company_name": "Bitcoin USD",
        "last_price": "64954.098",
        "change": "+868.82",
        "change_percent": "+1.36%",
        "market_time": "8:15 PM UTC",
        "volume": "25.19B",
        "average_volume_per_3_months": "36.03B",
        "market_cap": "1,278.80B"
    },
    {
        "symbol": "ETH-USD",
        "company_name": "Ethereum USD",
        "last_price": "3169.568",
        "change": "+81.49",
        "change_percent": "+2.64%",
        "market_time": "8:14 PM UTC",
        "volume": "10.68B",
        "average_volume_per_3_months": "17.28B",
        "market_cap": "380.58B"
    },
    {
        "symbol": "USDT-USD",
        "company_name": "Tether USDt USD",
        "last_price": "1.0003365",
        "change": "+0.00",
        "change_percent": "+0.01%",
        "market_time": "8:14 PM UTC",
        "volume": "48.28B",
        "average_volume_per_3_months": "69.08B",
        "market_cap": "109.75B"
    },
    {
        "symbol": "BNB-USD",
        "company_name": "BNB USD",
        "last_price": "574.052",
        "change": "+13.63",
        "change_percent": "+2.43%",
        "market_time": "8:14 PM UTC",
        "volume": "739.97M",
        "average_volume_per_3_months": "1.95B",
        "market_cap": "85.84B"
    },
    {
        "symbol": "SOL-USD",
        "company_name": "Solana USD",
        "last_price": "152.09267",
        "change": "+7.40",
        "change_percent": "+5.11%",
        "market_time": "8:14 PM UTC",
        "volume": "2.96B",
        "average_volume_per_3_months": "4.01B",
        "market_cap": "67.96B"
    },
    {
        "symbol": "USDC-USD",
        "company_name": "USD Coin USD",
        "last_price": "1.0000148",
        "change": "-0.00",
        "change_percent": "-0.00%",
        "market_time": "8:14 PM UTC",
        "volume": "5.72B",
        "average_volume_per_3_months": "7.93B",
        "market_cap": "33.96B"
    },
    {
        "symbol": "XRP-USD",
        "company_name": "XRP USD",
        "last_price": "0.52899694",
        "change": "+0.02",
        "change_percent": "+4.52%",
        "market_time": "8:15 PM UTC",
        "volume": "1.34B",
        "average_volume_per_3_months": "1.81B",
        "market_cap": "29.16B"
    },
    {
        "symbol": "DOGE-USD",
        "company_name": "Dogecoin USD",
        "last_price": "0.16272137",
        "change": "+0.01",
        "change_percent": "+5.97%",
        "market_time": "8:15 PM UTC",
        "volume": "1.73B",
        "average_volume_per_3_months": "2.07B",
        "market_cap": "23.43B"
    },
    {
        "symbol": "TON11419-USD",
        "company_name": "Toncoin USD",
        "last_price": "6.2058372",
        "change": "+0.05",
        "change_percent": "+0.84%",
        "market_time": "8:13 PM UTC",
        "volume": "346.33M",
        "average_volume_per_3_months": "185.78M",
        "market_cap": "21.54B"
    },
    {
        "symbol": "ADA-USD",
        "company_name": "Cardano USD",
        "last_price": "0.5053745",
        "change": "+0.03",
        "change_percent": "+7.28%",
        "market_time": "8:14 PM UTC",
        "volume": "546.92M",
        "average_volume_per_3_months": "661.95M",
        "market_cap": "18.00B"
    },
    {
        "symbol": "SHIB-USD",
        "company_name": "Shiba Inu USD",
        "last_price": "0.000025659256",
        "change": "+0.00",
        "change_percent": "+12.61%",
        "market_time": "8:14 PM UTC",
        "volume": "721.00M",
        "average_volume_per_3_months": "1.28B",
        "market_cap": "15.12B"
    },
    {
        "symbol": "AVAX-USD",
        "company_name": "Avalanche USD",
        "last_price": "37.863377",
        "change": "+2.73",
        "change_percent": "+7.76%",
        "market_time": "8:14 PM UTC",
        "volume": "436.60M",
        "average_volume_per_3_months": "828.57M",
        "market_cap": "14.31B"
    },
    {
        "symbol": "BCH-USD",
        "company_name": "Bitcoin Cash USD",
        "last_price": "513.96906",
        "change": "+31.67",
        "change_percent": "+6.57%",
        "market_time": "8:14 PM UTC",
        "volume": "497.92M",
        "average_volume_per_3_months": "670.36M",
        "market_cap": "10.12B"
    },
    {
        "symbol": "TRX-USD",
        "company_name": "TRON USD",
        "last_price": "0.11094783",
        "change": "+0.00",
        "change_percent": "+0.45%",
        "market_time": "8:14 PM UTC",
        "volume": "291.88M",
        "average_volume_per_3_months": "342.14M",
        "market_cap": "9.72B"
    },
    {
        "symbol": "LINK-USD",
        "company_name": "Chainlink USD",
        "last_price": "14.999271",
        "change": "+1.02",
        "change_percent": "+7.31%",
        "market_time": "8:14 PM UTC",
        "volume": "323.95M",
        "average_volume_per_3_months": "585.47M",
        "market_cap": "8.81B"
    },
    {
        "symbol": "NEAR-USD",
        "company_name": "NEAR Protocol USD",
        "last_price": "6.1350613",
        "change": "+0.54",
        "change_percent": "+9.60%",
        "market_time": "8:14 PM UTC",
        "volume": "362.41M",
        "average_volume_per_3_months": "483.97M",
        "market_cap": "6.53B"
    },
    {
        "symbol": "LTC-USD",
        "company_name": "Litecoin USD",
        "last_price": "85.43469",
        "change": "+4.20",
        "change_percent": "+5.17%",
        "market_time": "8:15 PM UTC",
        "volume": "357.76M",
        "average_volume_per_3_months": "586.94M",
        "market_cap": "6.36B"
    },
    {
        "symbol": "DAI-USD",
        "company_name": "Dai USD",
        "last_price": "1.0001171",
        "change": "+0.00",
        "change_percent": "+0.01%",
        "market_time": "8:14 PM UTC",
        "volume": "760.72M",
        "average_volume_per_3_months": "392.62M",
        "market_cap": "5.35B"
    },
    {
        "symbol": "FDUSD-USD",
        "company_name": "-",
        "last_price": "0.99988854",
        "change": "+0.00",
        "change_percent": "+0.03%",
        "market_time": "8:13 PM UTC",
        "volume": "5.75B",
        "average_volume_per_3_months": "8.75B",
        "market_cap": "3.59B"
    },
    {
        "symbol": "WIF-USD",
        "company_name": "dogwifhat USD",
        "last_price": "3.0358114",
        "change": "+0.03",
        "change_percent": "+0.88%",
        "market_time": "8:09 PM UTC",
        "volume": "512.79M",
        "average_volume_per_3_months": "401.27M",
        "market_cap": "3.03B"
    },
    {
        "symbol": "PEPE24478-USD",
        "company_name": "Pepe USD",
        "last_price": "0.000005824598",
        "change": "+0.00",
        "change_percent": "+13.00%",
        "market_time": "8:13 PM UTC",
        "volume": "568.30M",
        "average_volume_per_3_months": "805.39M",
        "market_cap": "2.45B"
    },
    {
        "symbol": "FET-USD",
        "company_name": "Fetch.ai USD",
        "last_price": "2.4819596",
        "change": "+0.35",
        "change_percent": "+16.30%",
        "market_time": "8:14 PM UTC",
        "volume": "293.18M",
        "average_volume_per_3_months": "320.11M",
        "market_cap": "2.11B"
    },
    {
        "symbol": "RUNE-USD",
        "company_name": "THORChain USD",
        "last_price": "5.635324",
        "change": "+0.18",
        "change_percent": "+3.23%",
        "market_time": "8:15 PM UTC",
        "volume": "284.94M",
        "average_volume_per_3_months": "385.56M",
        "market_cap": "1.89B"
    },
    {
        "symbol": "ENA-USD",
        "company_name": "Ethena USD",
        "last_price": "1.112332",
        "change": "+0.12",
        "change_percent": "+11.78%",
        "market_time": "8:13 PM UTC",
        "volume": "579.32M",
        "average_volume_per_3_months": "1.19B",
        "market_cap": "1.59B"
    },
    {
        "symbol": "WLD-USD",
        "company_name": "Worldcoin USD",
        "last_price": "5.5150313",
        "change": "+0.46",
        "change_percent": "+9.10%",
        "market_time": "8:13 PM UTC",
        "volume": "269.98M",
        "average_volume_per_3_months": "434.35M",
        "market_cap": "1.05B"
    },
    {
        "symbol": "BOME-USD",
        "company_name": "BOOK OF MEME USD",
        "last_price": "0.010862837",
        "change": "+0.00",
        "change_percent": "+6.04%",
        "market_time": "8:13 PM UTC",
        "volume": "294.43M",
        "average_volume_per_3_months": "943.58M",
        "market_cap": "599.63M"
    },
    {
        "symbol": "VBTC-USD",
        "company_name": "-",
        "last_price": "1399.0062",
        "change": "-",
        "change_percent": "-",
        "market_time": "1:18 AM UTC",
        "volume": "658.14M",
        "average_volume_per_3_months": "-",
        "market_cap": "287.97M"
    },
    {
        "symbol": "VUSDT-USD",
        "company_name": "-",
        "last_price": "0.023626145",
        "change": "-",
        "change_percent": "-",
        "market_time": "1:18 AM UTC",
        "volume": "284.47M",
        "average_volume_per_3_months": "-",
        "market_cap": "35.11M"
    },
    {
        "symbol": "WETH-USD",
        "company_name": "WETH USD",
        "last_price": "3152.4973",
        "change": "+62.01",
        "change_percent": "+2.01%",
        "market_time": "8:14 PM UTC",
        "volume": "1.37B",
        "average_volume_per_3_months": "1.77B",
        "market_cap": "-"
    },
    {
        "symbol": "SOL16116-USD",
        "company_name": "Wrapped Solana USD",
        "last_price": "151.69858",
        "change": "+6.90",
        "change_percent": "+4.76%",
        "market_time": "8:13 PM UTC",
        "volume": "830.57M",
        "average_volume_per_3_months": "1.14B",
        "market_cap": "-"
    }
] ''';
  static const silverJson = '''[
    {
        "silver_id": 1,
        "name": "جرام فضة نقي عيار 99.9",
        "current_price_in_egp": "42.20",
        "current_rate_change_in_egp": "-0.04",
        "current_rate_change_percent_in_egp": "-0.09",
        "current_price_in_usd": "0.88",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.14",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "42.24",
                "rate_change_in_egp": "0.16",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.24",
                "rate_change_in_egp": "0.16",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.20",
                "rate_change_in_egp": "-0.04",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.20",
                "rate_change_in_egp": "-0.04",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.20",
                "rate_change_in_egp": "-0.04",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.20",
                "rate_change_in_egp": "-0.04",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            },
            {
                "price_in_egp": "42.20",
                "rate_change_in_egp": "-0.04",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14"
            }
        ]
    },
    {
        "silver_id": 2,
        "name": "جرام فضة بريطاني عيار 95.8",
        "current_price_in_egp": "40.43",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.07",
        "current_price_in_usd": "0.84",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.19",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "40.46",
                "rate_change_in_egp": "0.15",
                "rate_change_percent_in_egp": "0.37",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.46",
                "rate_change_in_egp": "0.15",
                "rate_change_percent_in_egp": "0.37",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.43",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.07",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.43",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.07",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.43",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.07",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.43",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.07",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            },
            {
                "price_in_egp": "40.43",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.07",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.19"
            }
        ]
    },
    {
        "silver_id": 3,
        "name": "جرام فضة استرليني عيار 92.5",
        "current_price_in_egp": "39.04",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.08",
        "current_price_in_usd": "0.81",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.23",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "39.07",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.07",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.04",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.04",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.04",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.04",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "39.04",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            }
        ]
    },
    {
        "silver_id": 4,
        "name": "جرام فضة عيار 916",
        "current_price_in_egp": "38.66",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.08",
        "current_price_in_usd": "0.80",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.23",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "38.69",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "38.69",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.23"
            },
            {
                "price_in_egp": "38.66",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23"
            },
            {
                "price_in_egp": "38.66",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23"
            },
            {
                "price_in_egp": "38.66",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23"
            },
            {
                "price_in_egp": "38.66",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23"
            },
            {
                "price_in_egp": "38.66",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23"
            }
        ]
    },
    {
        "silver_id": 5,
        "name": "جرام فضة عيار 875 (الفضة السعودي)",
        "current_price_in_egp": "36.93",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.08",
        "current_price_in_usd": "0.77",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.3",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "36.96",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.96",
                "rate_change_in_egp": "0.14",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.93",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.93",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.93",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.93",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            },
            {
                "price_in_egp": "36.93",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3"
            }
        ]
    },
    {
        "silver_id": 6,
        "name": "جرام فضة عيار 800",
        "current_price_in_egp": "33.76",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.09",
        "current_price_in_usd": "0.70",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.43",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "33.79",
                "rate_change_in_egp": "0.12",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.79",
                "rate_change_in_egp": "0.12",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.76",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.76",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.76",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.76",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            },
            {
                "price_in_egp": "33.76",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.43"
            }
        ]
    },
    {
        "silver_id": 7,
        "name": "جرام فضة عيار 750",
        "current_price_in_egp": "31.65",
        "current_rate_change_in_egp": "-0.03",
        "current_rate_change_percent_in_egp": "-0.09",
        "current_price_in_usd": "0.66",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.52",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "31.68",
                "rate_change_in_egp": "0.12",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.68",
                "rate_change_in_egp": "0.12",
                "rate_change_percent_in_egp": "0.38",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.65",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.65",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.65",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.65",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            },
            {
                "price_in_egp": "31.65",
                "rate_change_in_egp": "-0.03",
                "rate_change_percent_in_egp": "-0.09",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52"
            }
        ]
    },
    {
        "silver_id": 8,
        "name": "جرام فضة عيار 585",
        "current_price_in_egp": "24.69",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.08",
        "current_price_in_usd": "0.51",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.96",
        "scraped_at": "2024-04-23 20:08:24",
        "prices": [
            {
                "price_in_egp": "24.71",
                "rate_change_in_egp": "0.09",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.71",
                "rate_change_in_egp": "0.09",
                "rate_change_percent_in_egp": "0.36",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.69",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.69",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.69",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.69",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            },
            {
                "price_in_egp": "24.69",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.96"
            }
        ]
    }
] ''';
}
