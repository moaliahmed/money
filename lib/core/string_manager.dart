class AppString {
  static const appName = 'CoinMoney';
  static const greater = 'greater';
  static const smaller = 'smaller';

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
  static const baseUrl = 'http://197.164.48.104';
  static const currencyBankUrl = '$baseUrl:8000/api/return_currencies_details_in_bank_from_currency_csv_file';
  static const goldUrl = '$baseUrl:8000/api/return_gold_details_in_bank_from_gold_csv_file';
  static const silverUrl = '$baseUrl:8000/api/return_silver_details';
  static const currencyBlackBankUrl = '$baseUrl:8000/api/return_currency_details_in_black_market';
  static const cryptoUrl = '$baseUrl:8000/api/return_crypto_details';
  static const stockUrl = '$baseUrl:8000/api/return_stock_details';
  static const registerUrl = '$baseUrl:8000/api/register';
  static const loginUrl = '$baseUrl:8000/api/login';
  static const currencyAiUrl = '$baseUrl:5000/predict_prices';
  static const goldAiUrl = '$baseUrl:5002/predict';

  static const currencyAlert='CurrencyAlert';
  static const goldAlert='GoldAlert';
  static const silverAlert='SilverAlert';
  static const stocksAlert='StocksAlert';
  static const cryptoAlert='CryptoAlert';

  static const currencyJsons ='''[
    {
        "currency_id": 1,
        "name": "الدولار الأمريكي",
        "image": "https://banklive.net/flags/1x1/us.svg",
        "current_buy_price": "39",
        "current_buy_price_change": "0.02",
        "current_sell_price": "47.8",
        "current_sell_price_change": "0.02",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "51",
                "buy_rate_change": "0.02",
                "sell_price": "57.8",
                "sell_rate_change": "0.01",
                "scraped_at": "2024-05-01 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.03",
                "sell_price": "42.8",
                "sell_rate_change": "-0.02",
                "scraped_at": "2024-05-02 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.04",
                "sell_price": "43.8",
                "sell_rate_change": "-0.01",
                "scraped_at": "2024-05-03 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.05",
                "sell_price": "37.8",
                "sell_rate_change": "-0.04",
                "scraped_at": "2024-05-04 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.03",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-05 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "40.8",
                "sell_rate_change": "-0.06",
                "scraped_at": "2024-05-06 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.01",
                "sell_price": "41.8",
                "sell_rate_change": "-0.03",
                "scraped_at": "2024-05-07 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "-0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-08 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.01",
                "sell_price": "43.8",
                "sell_rate_change": "-0.02",
                "scraped_at": "2024-05-09 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "-0.02",
                "sell_price": "44.8",
                "sell_rate_change": "0.22",
                "scraped_at": "2024-05-10 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "43.8",
                "sell_rate_change": "-0.02",
                "scraped_at": "2024-05-11 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.02",
                "sell_price": "37.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-12 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.01",
                "sell_price": "47.8",
                "sell_rate_change": "-0.02",
                "scraped_at": "2024-05-13 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.12",
                "sell_price": "42.8",
                "sell_rate_change": "-0.12",
                "scraped_at": "2024-05-14 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.03",
                "sell_price": "37.8",
                "sell_rate_change": "-0.02",
                "scraped_at": "2024-05-15 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "41.8",
                "sell_rate_change": "0.42",
                "scraped_at": "2024-05-16 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "-0.22",
                "sell_price": "45.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-17 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.42",
                "sell_price": "50.8",
                "sell_rate_change": "-0.12",
                "scraped_at": "2024-05-18 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.03",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-19 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "41.8",
                "sell_rate_change": "-0.03",
                "scraped_at": "2024-05-20 02:00:02"
            }
        ]
    },
    {
        "currency_id": 2,
        "name": "اليورو",
        "image": "https://banklive.net/flags/1x1/eu.svg",
        "current_buy_price": "51.3014",
        "current_buy_price_change": "0.0216",
        "current_sell_price": "51.5093",
        "current_sell_price_change": "0.0216",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-01 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-02 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-03 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-04 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-05 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-06 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-07 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-08 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-09 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-10 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-11 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-12 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-13 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-14 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-15 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-16 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-17 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-18 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-19 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-05-20 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-01 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-02 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-03 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-04 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-05 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-06 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-07 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-08 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-09 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-10 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-11 00:18:16"
            },
            {
                "buy_price": "50.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-12 02:00:02"
            }, {
                "buy_price": "44.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-13 00:18:16"
            },
            {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-14 02:00:02"
            }, {
                "buy_price": "43.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-15 00:18:16"
            },
            {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-16 02:00:02"
            }, {
                "buy_price": "47.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-17 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-18 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-19 02:00:02"
            }, {
                "buy_price": "40.7",
                "buy_rate_change": "0.02",
                "sell_price": "47.8",
                "sell_rate_change": "0.02",
                "scraped_at": "2024-06-20 02:00:02"
            }
        ]
    },
    {
        "currency_id": 3,
        "name": "الجنيه الإسترليني",
        "image": "https://banklive.net/flags/1x1/gb.svg",
        "current_buy_price": "59.7681",
        "current_buy_price_change": "0.0108",
        "current_sell_price": "60.0846",
        "current_sell_price_change": "0.0251",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "59.7681",
                "buy_rate_change": "0.0108",
                "sell_price": "60.0846",
                "sell_rate_change": "0.0251",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "59.7681",
                "buy_rate_change": "0.0108",
                "sell_price": "60.0846",
                "sell_rate_change": "0.0251",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 4,
        "name": "الفرنك السويسري",
        "image": "https://banklive.net/flags/1x1/ch.svg",
        "current_buy_price": "52.4983",
        "current_buy_price_change": "0.022",
        "current_sell_price": "52.771",
        "current_sell_price_change": "0.022",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "52.4983",
                "buy_rate_change": "0.022",
                "sell_price": "52.771",
                "sell_rate_change": "0.022",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "52.4983",
                "buy_rate_change": "0.022",
                "sell_price": "52.771",
                "sell_rate_change": "0.022",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 5,
        "name": "الدينار الكويتي",
        "image": "https://banklive.net/flags/1x1/kw.svg",
        "current_buy_price": "155.2482",
        "current_buy_price_change": "0.0651",
        "current_sell_price": "155.523",
        "current_sell_price_change": "0.0651",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "155.2482",
                "buy_rate_change": "0.0651",
                "sell_price": "155.523",
                "sell_rate_change": "0.0651",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "155.2482",
                "buy_rate_change": "0.0651",
                "sell_price": "155.523",
                "sell_rate_change": "0.0651",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 6,
        "name": "الريال السعودي",
        "image": "https://banklive.net/flags/1x1/sa.svg",
        "current_buy_price": "12.7166",
        "current_buy_price_change": "0.0053",
        "current_sell_price": "12.7446",
        "current_sell_price_change": "0.0053",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "12.7166",
                "buy_rate_change": "0.0053",
                "sell_price": "12.7446",
                "sell_rate_change": "0.0053",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "12.7166",
                "buy_rate_change": "0.0053",
                "sell_price": "12.7446",
                "sell_rate_change": "0.0053",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 7,
        "name": "الدينار الاردني",
        "image": "https://banklive.net/flags/1x1/jo.svg",
        "current_buy_price": "66.746",
        "current_buy_price_change": "0.028",
        "current_sell_price": "67.5141",
        "current_sell_price_change": "0.0282",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "66.746",
                "buy_rate_change": "0.028",
                "sell_price": "67.5141",
                "sell_rate_change": "0.0282",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "66.746",
                "buy_rate_change": "0.028",
                "sell_price": "67.5141",
                "sell_rate_change": "0.0282",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 8,
        "name": "الدينار البحريني",
        "image": "https://banklive.net/flags/1x1/bh.svg",
        "current_buy_price": "125.2034",
        "current_buy_price_change": "0.0525",
        "current_sell_price": "126.7871",
        "current_sell_price_change": "0.0531",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "125.2034",
                "buy_rate_change": "0.0525",
                "sell_price": "126.7871",
                "sell_rate_change": "0.0531",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "125.2034",
                "buy_rate_change": "0.0525",
                "sell_price": "126.7871",
                "sell_rate_change": "0.0531",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 9,
        "name": "الريال القطري",
        "image": "https://banklive.net/flags/1x1/qa.svg",
        "current_buy_price": "12.1374",
        "current_buy_price_change": "0.0051",
        "current_sell_price": "13.1279",
        "current_sell_price_change": "0.0055",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "12.1374",
                "buy_rate_change": "0.0051",
                "sell_price": "13.1279",
                "sell_rate_change": "0.0055",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "12.1374",
                "buy_rate_change": "0.0051",
                "sell_price": "13.1279",
                "sell_rate_change": "0.0055",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 10,
        "name": "الريال العماني",
        "image": "https://banklive.net/flags/1x1/om.svg",
        "current_buy_price": "122.6805",
        "current_buy_price_change": "0.0515",
        "current_sell_price": "124.172",
        "current_sell_price_change": "0.052",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "122.6805",
                "buy_rate_change": "0.0515",
                "sell_price": "124.172",
                "sell_rate_change": "0.052",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "122.6805",
                "buy_rate_change": "0.0515",
                "sell_price": "124.172",
                "sell_rate_change": "0.052",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 11,
        "name": "الدرهم الاماراتي",
        "image": "https://banklive.net/flags/1x1/ae.svg",
        "current_buy_price": "13.0022",
        "current_buy_price_change": "0.0054",
        "current_sell_price": "13.0142",
        "current_sell_price_change": "0.0054",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "13.0022",
                "buy_rate_change": "0.0054",
                "sell_price": "13.0142",
                "sell_rate_change": "0.0054",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "13.0022",
                "buy_rate_change": "0.0054",
                "sell_price": "13.0142",
                "sell_rate_change": "0.0054",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 12,
        "name": "الدولار الكندي",
        "image": "https://banklive.net/flags/1x1/ca.svg",
        "current_buy_price": "34.8404",
        "current_buy_price_change": "0.0146",
        "current_sell_price": "34.9901",
        "current_sell_price_change": "0.0146",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "34.8404",
                "buy_rate_change": "0.0146",
                "sell_price": "34.9901",
                "sell_rate_change": "0.0146",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "34.8404",
                "buy_rate_change": "0.0146",
                "sell_price": "34.9901",
                "sell_rate_change": "0.0146",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 13,
        "name": "الدولار الاسترالي",
        "image": "https://banklive.net/flags/1x1/au.svg",
        "current_buy_price": "31.4248",
        "current_buy_price_change": "0.0132",
        "current_sell_price": "31.7535",
        "current_sell_price_change": "0.0132",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "31.4248",
                "buy_rate_change": "0.0132",
                "sell_price": "31.7535",
                "sell_rate_change": "0.0132",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "31.4248",
                "buy_rate_change": "0.0132",
                "sell_price": "31.7535",
                "sell_rate_change": "0.0132",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 14,
        "name": "الين الياباني",
        "image": "https://banklive.net/flags/1x1/jp.svg",
        "current_buy_price": "0.3084",
        "current_buy_price_change": "0.0001",
        "current_sell_price": "0.3107",
        "current_sell_price_change": "0.0002",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "0.3084",
                "buy_rate_change": "0.0001",
                "sell_price": "0.3107",
                "sell_rate_change": "0.0002",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "0.3084",
                "buy_rate_change": "0.0001",
                "sell_price": "0.3107",
                "sell_rate_change": "0.0002",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    },
    {
        "currency_id": 15,
        "name": "النرويج كرونة",
        "image": "https://banklive.net/flags/1x1/no.svg",
        "current_buy_price": "4.3867",
        "current_buy_price_change": "0.0001",
        "current_sell_price": "4.4193",
        "current_sell_price_change": "0.0019",
        "scraped_at": "2024-05-08 02:00:02",
        "prices": [
            {
                "buy_price": "4.3867",
                "buy_rate_change": "0.0001",
                "sell_price": "4.4193",
                "sell_rate_change": "0.0019",
                "scraped_at": "2024-05-08 00:18:16"
            },
            {
                "buy_price": "4.3867",
                "buy_rate_change": "0.0001",
                "sell_price": "4.4193",
                "sell_rate_change": "0.0019",
                "scraped_at": "2024-05-08 02:00:02"
            }
        ]
    }
] ''';
 static const stocksJsons='''[
    {
        "symbol": "BTC-USD",
        "company_name": "Bitcoin USD",
        "last_price": "60,758.16",
        "change": "-2,293.65",
        "change_percent": "-3.64%",
        "market_time": "10:34AM UTC",
        "volume": "25.22B",
        "market_cap": "1.197T"
    },
    {
        "symbol": "OKLO",
        "company_name": "Oklo Inc.",
        "last_price": "8.45",
        "change": "-9.78",
        "change_percent": "-53.65%",
        "market_time": "4:00PM EDT",
        "volume": "24.966M",
        "market_cap": "364.195M"
    },
    {
        "symbol": "^GSPC",
        "company_name": "S&P 500",
        "last_price": "5,222.68",
        "change": "+8.60",
        "change_percent": "+0.16%",
        "market_time": "5:23PM EDT",
        "volume": "1.883B",
        "market_cap": "N/A"
    },
    {
        "symbol": "^DJI",
        "company_name": "Dow Jones Industrial Average",
        "last_price": "39,512.84",
        "change": "+125.08",
        "change_percent": "+0.32%",
        "market_time": "5:23PM EDT",
        "volume": "291.487M",
        "market_cap": "N/A"
    },
    {
        "symbol": "^IXIC",
        "company_name": "NASDAQ Composite",
        "last_price": "16,340.87",
        "change": "-5.40",
        "change_percent": "-0.03%",
        "market_time": "5:15PM EDT",
        "volume": "4.027B",
        "market_cap": "N/A"
    },
    {
        "symbol": "MCD",
        "company_name": "McDonald's Corporation",
        "last_price": "275.00",
        "change": "+7.05",
        "change_percent": "+2.63%",
        "market_time": "4:00PM EDT",
        "volume": "4.954M",
        "market_cap": "198.188B"
    },
    {
        "symbol": "ZK",
        "company_name": "ZEEKR Intelligent Technology Holding Limited",
        "last_price": "28.26",
        "change": "+7.26",
        "change_percent": "+34.57%",
        "market_time": "4:00PM EDT",
        "volume": "9.593M",
        "market_cap": "64.033B"
    },
    {
        "symbol": "ETH-USD",
        "company_name": "Ethereum USD",
        "last_price": "2,905.31",
        "change": "-126.83",
        "change_percent": "-4.18%",
        "market_time": "10:33AM UTC",
        "volume": "11.448B",
        "market_cap": "348.954B"
    },
    {
        "symbol": "DOGE-USD",
        "company_name": "Dogecoin USD",
        "last_price": "0.143088",
        "change": "-0.008291",
        "change_percent": "-5.48%",
        "market_time": "10:34AM UTC",
        "volume": "921.82M",
        "market_cap": "20.64B"
    },
    {
        "symbol": "XRP-USD",
        "company_name": "XRP USD",
        "last_price": "0.502431",
        "change": "-0.012743",
        "change_percent": "-2.47%",
        "market_time": "10:34AM UTC",
        "volume": "920.387M",
        "market_cap": "27.814B"
    },
    {
        "symbol": "BTC-EUR",
        "company_name": "Bitcoin EUR",
        "last_price": "56,368.38",
        "change": "-2,127.93",
        "change_percent": "-3.64%",
        "market_time": "10:34AM UTC",
        "volume": "23.398B",
        "market_cap": "1.11T"
    },
    {
        "symbol": "NKE",
        "company_name": "NIKE, Inc.",
        "last_price": "90.94",
        "change": "-2.45",
        "change_percent": "-2.62%",
        "market_time": "4:00PM EDT",
        "volume": "10.491M",
        "market_cap": "137.261B"
    },
    {
        "symbol": "KO",
        "company_name": "The Coca-Cola Company",
        "last_price": "63.26",
        "change": "+0.38",
        "change_percent": "+0.60%",
        "market_time": "4:00PM EDT",
        "volume": "8.358M",
        "market_cap": "272.522B"
    },
    {
        "symbol": "SG",
        "company_name": "Sweetgreen, Inc.",
        "last_price": "31.56",
        "change": "+8.00",
        "change_percent": "+33.96%",
        "market_time": "4:02PM EDT",
        "volume": "21.169M",
        "market_cap": "3.576B"
    },
    {
        "symbol": "BTC-CAD",
        "company_name": "Bitcoin CAD",
        "last_price": "83,108.05",
        "change": "-3,137.38",
        "change_percent": "-3.64%",
        "market_time": "10:34AM UTC",
        "volume": "34.497B",
        "market_cap": "1.637T"
    },
    {
        "symbol": "LIDR",
        "company_name": "AEye, Inc.",
        "last_price": "2.5800",
        "change": "+1.4000",
        "change_percent": "+118.64%",
        "market_time": "4:00PM EDT",
        "volume": "157.45M",
        "market_cap": "16.778M"
    },
    {
        "symbol": "ABBV",
        "company_name": "AbbVie Inc.",
        "last_price": "160.75",
        "change": "+0.35",
        "change_percent": "+0.22%",
        "market_time": "4:00PM EDT",
        "volume": "3.404M",
        "market_cap": "283.864B"
    },
    {
        "symbol": "EURUSD=X",
        "company_name": "EUR/USD",
        "last_price": "1.0772",
        "change": "-0.0012",
        "change_percent": "-0.11%",
        "market_time": "5:50AM BST",
        "volume": "0",
        "market_cap": "N/A"
    },
    {
        "symbol": "SOL-USD",
        "company_name": "Solana USD",
        "last_price": "144.51",
        "change": "-9.44",
        "change_percent": "-6.13%",
        "market_time": "10:33AM UTC",
        "volume": "2.336B",
        "market_cap": "64.802B"
    },
    {
        "symbol": "BRK-B",
        "company_name": "Berkshire Hathaway Inc.",
        "last_price": "412.05",
        "change": "+3.23",
        "change_percent": "+0.79%",
        "market_time": "4:01PM EDT",
        "volume": "2.891M",
        "market_cap": "890.255B"
    },
    {
        "symbol": "ADBE",
        "company_name": "Adobe Inc.",
        "last_price": "482.29",
        "change": "-0.36",
        "change_percent": "-0.07%",
        "market_time": "4:00PM EDT",
        "volume": "2.726M",
        "market_cap": "216.066B"
    },
    {
        "symbol": "JNJ",
        "company_name": "Johnson & Johnson",
        "last_price": "149.91",
        "change": "+0.06",
        "change_percent": "+0.04%",
        "market_time": "4:00PM EDT",
        "volume": "5.536M",
        "market_cap": "360.785B"
    },
    {
        "symbol": "VZ",
        "company_name": "Verizon Communications Inc.",
        "last_price": "40.40",
        "change": "+0.61",
        "change_percent": "+1.53%",
        "market_time": "4:00PM EDT",
        "volume": "15.948M",
        "market_cap": "170.054B"
    },
    {
        "symbol": "OXY",
        "company_name": "Occidental Petroleum Corporation",
        "last_price": "63.57",
        "change": "-0.67",
        "change_percent": "-1.04%",
        "market_time": "4:00PM EDT",
        "volume": "6.516M",
        "market_cap": "56.364B"
    },
    {
        "symbol": "MMM",
        "company_name": "3M Company",
        "last_price": "98.93",
        "change": "+1.60",
        "change_percent": "+1.64%",
        "market_time": "4:02PM EDT",
        "volume": "4.156M",
        "market_cap": "54.744B"
    },
    {
        "symbol": "VOO",
        "company_name": "Vanguard S&P 500 ETF",
        "last_price": "478.74",
        "change": "+0.59",
        "change_percent": "+0.12%",
        "market_time": "4:00PM EDT",
        "volume": "3.334M",
        "market_cap": "N/A"
    },
    {
        "symbol": "ANET",
        "company_name": "Arista Networks, Inc.",
        "last_price": "314.03",
        "change": "+17.96",
        "change_percent": "+6.07%",
        "market_time": "4:00PM EDT",
        "volume": "5.479M",
        "market_cap": "98.405B"
    }
] ''';
  static const cryptoJsons = '''[
    {
        "symbol": "BTC-USD",
        "company_name": "Bitcoin USD",
        "last_price": "60812.47",
        "change": "-2269.12",
        "change_percent": "-3.60%",
        "market_time": "10:31 AM UTC",
        "volume": "25.23B",
        "average_volume_per_3_months": "37.83B",
        "market_cap": "1,197.81B"
    },
    {
        "symbol": "ETH-USD",
        "company_name": "Ethereum USD",
        "last_price": "2905.2144",
        "change": "-127.29",
        "change_percent": "-4.20%",
        "market_time": "10:30 AM UTC",
        "volume": "11.44B",
        "average_volume_per_3_months": "18.26B",
        "market_cap": "348.94B"
    },
    {
        "symbol": "USDT-USD",
        "company_name": "Tether USDt USD",
        "last_price": "0.9996773",
        "change": "-0.00",
        "change_percent": "-0.01%",
        "market_time": "10:30 AM UTC",
        "volume": "46.31B",
        "average_volume_per_3_months": "73.17B",
        "market_cap": "110.80B"
    },
    {
        "symbol": "BNB-USD",
        "company_name": "BNB USD",
        "last_price": "586.6517",
        "change": "-7.11",
        "change_percent": "-1.20%",
        "market_time": "10:30 AM UTC",
        "volume": "1.52B",
        "average_volume_per_3_months": "2.04B",
        "market_cap": "86.58B"
    },
    {
        "symbol": "SOL-USD",
        "company_name": "Solana USD",
        "last_price": "144.56131",
        "change": "-9.36",
        "change_percent": "-6.08%",
        "market_time": "10:30 AM UTC",
        "volume": "2.34B",
        "average_volume_per_3_months": "4.21B",
        "market_cap": "64.82B"
    },
    {
        "symbol": "USDC-USD",
        "company_name": "USD Coin USD",
        "last_price": "0.9999329",
        "change": "+0.00",
        "change_percent": "+0.01%",
        "market_time": "10:30 AM UTC",
        "volume": "5.43B",
        "average_volume_per_3_months": "8.27B",
        "market_cap": "33.10B"
    },
    {
        "symbol": "XRP-USD",
        "company_name": "XRP USD",
        "last_price": "0.5032266",
        "change": "-0.01",
        "change_percent": "-2.29%",
        "market_time": "10:31 AM UTC",
        "volume": "921.15M",
        "average_volume_per_3_months": "1.89B",
        "market_cap": "27.86B"
    },
    {
        "symbol": "TON11419-USD",
        "company_name": "Toncoin USD",
        "last_price": "6.692291",
        "change": "-0.23",
        "change_percent": "-3.37%",
        "market_time": "10:30 AM UTC",
        "volume": "685.81M",
        "average_volume_per_3_months": "236.32M",
        "market_cap": "23.25B"
    },
    {
        "symbol": "DOGE-USD",
        "company_name": "Dogecoin USD",
        "last_price": "0.14349698",
        "change": "-0.01",
        "change_percent": "-5.24%",
        "market_time": "10:31 AM UTC",
        "volume": "922.99M",
        "average_volume_per_3_months": "2.33B",
        "market_cap": "20.70B"
    },
    {
        "symbol": "ADA-USD",
        "company_name": "Cardano USD",
        "last_price": "0.44462904",
        "change": "-0.02",
        "change_percent": "-3.90%",
        "market_time": "10:30 AM UTC",
        "volume": "276.83M",
        "average_volume_per_3_months": "660.43M",
        "market_cap": "15.86B"
    },
    {
        "symbol": "SHIB-USD",
        "company_name": "Shiba Inu USD",
        "last_price": "0.000022565808",
        "change": "-0.00",
        "change_percent": "-3.60%",
        "market_time": "10:30 AM UTC",
        "volume": "352.92M",
        "average_volume_per_3_months": "1.43B",
        "market_cap": "13.30B"
    },
    {
        "symbol": "AVAX-USD",
        "company_name": "Avalanche USD",
        "last_price": "33.475792",
        "change": "-2.22",
        "change_percent": "-6.22%",
        "market_time": "10:30 AM UTC",
        "volume": "377.90M",
        "average_volume_per_3_months": "799.06M",
        "market_cap": "12.77B"
    },
    {
        "symbol": "TRX-USD",
        "company_name": "TRON USD",
        "last_price": "0.12687191",
        "change": "+0.00",
        "change_percent": "+1.59%",
        "market_time": "10:30 AM UTC",
        "volume": "326.05M",
        "average_volume_per_3_months": "359.70M",
        "market_cap": "11.10B"
    },
    {
        "symbol": "BCH-USD",
        "company_name": "Bitcoin Cash USD",
        "last_price": "428.4793",
        "change": "-25.14",
        "change_percent": "-5.54%",
        "market_time": "10:30 AM UTC",
        "volume": "290.02M",
        "average_volume_per_3_months": "714.10M",
        "market_cap": "8.44B"
    },
    {
        "symbol": "NEAR-USD",
        "company_name": "NEAR Protocol USD",
        "last_price": "7.228609",
        "change": "-0.31",
        "change_percent": "-4.12%",
        "market_time": "10:31 AM UTC",
        "volume": "411.30M",
        "average_volume_per_3_months": "569.57M",
        "market_cap": "7.74B"
    },
    {
        "symbol": "LTC-USD",
        "company_name": "Litecoin USD",
        "last_price": "80.81495",
        "change": "-2.36",
        "change_percent": "-2.84%",
        "market_time": "10:31 AM UTC",
        "volume": "313.29M",
        "average_volume_per_3_months": "618.04M",
        "market_cap": "6.02B"
    },
    {
        "symbol": "DAI-USD",
        "company_name": "Dai USD",
        "last_price": "0.999926",
        "change": "-0.00",
        "change_percent": "-0.00%",
        "market_time": "10:30 AM UTC",
        "volume": "610.78M",
        "average_volume_per_3_months": "496.30M",
        "market_cap": "5.35B"
    },
    {
        "symbol": "RNDR-USD",
        "company_name": "Render USD",
        "last_price": "10.910977",
        "change": "-0.57",
        "change_percent": "-4.99%",
        "market_time": "10:30 AM UTC",
        "volume": "436.39M",
        "average_volume_per_3_months": "321.26M",
        "market_cap": "4.24B"
    },
    {
        "symbol": "FDUSD-USD",
        "company_name": "-",
        "last_price": "0.99986506",
        "change": "-0.00",
        "change_percent": "-0.01%",
        "market_time": "10:30 AM UTC",
        "volume": "5.42B",
        "average_volume_per_3_months": "9.44B",
        "market_cap": "3.82B"
    },
    {
        "symbol": "PEPE24478-USD",
        "company_name": "Pepe USD",
        "last_price": "0.000008656797",
        "change": "+0.00",
        "change_percent": "+0.35%",
        "market_time": "10:30 AM UTC",
        "volume": "829.56M",
        "average_volume_per_3_months": "1.02B",
        "market_cap": "3.64B"
    },
    {
        "symbol": "WIF-USD",
        "company_name": "dogwifhat USD",
        "last_price": "3.041406",
        "change": "-0.11",
        "change_percent": "-3.51%",
        "market_time": "10:31 AM UTC",
        "volume": "380.62M",
        "average_volume_per_3_months": "504.70M",
        "market_cap": "3.04B"
    },
    {
        "symbol": "ARB11841-USD",
        "company_name": "Arbitrum USD",
        "last_price": "0.9951013",
        "change": "-0.05",
        "change_percent": "-4.65%",
        "market_time": "10:30 AM UTC",
        "volume": "294.02M",
        "average_volume_per_3_months": "530.41M",
        "market_cap": "2.64B"
    },
    {
        "symbol": "RUNE-USD",
        "company_name": "THORChain USD",
        "last_price": "5.768568",
        "change": "-0.66",
        "change_percent": "-10.28%",
        "market_time": "10:31 AM UTC",
        "volume": "303.38M",
        "average_volume_per_3_months": "416.94M",
        "market_cap": "1.93B"
    },
    {
        "symbol": "WLD-USD",
        "company_name": "Worldcoin USD",
        "last_price": "5.772977",
        "change": "-0.07",
        "change_percent": "-1.14%",
        "market_time": "10:30 AM UTC",
        "volume": "395.17M",
        "average_volume_per_3_months": "496.35M",
        "market_cap": "1.21B"
    },
    {
        "symbol": "VBNB-USD",
        "company_name": "-",
        "last_price": "14.258693",
        "change": "-0.16",
        "change_percent": "-1.13%",
        "market_time": "10:30 AM UTC",
        "volume": "734.79M",
        "average_volume_per_3_months": "-",
        "market_cap": "1.20B"
    },
    {
        "symbol": "TRB-USD",
        "company_name": "Tellor USD",
        "last_price": "122.07666",
        "change": "-10.40",
        "change_percent": "-7.85%",
        "market_time": "10:30 AM UTC",
        "volume": "267.99M",
        "average_volume_per_3_months": "80.93M",
        "market_cap": "314.26M"
    },
    {
        "symbol": "VBTC-USD",
        "company_name": "-",
        "last_price": "1237.2345",
        "change": "-43.99",
        "change_percent": "-3.43%",
        "market_time": "10:30 AM UTC",
        "volume": "658.14M",
        "average_volume_per_3_months": "-",
        "market_cap": "254.67M"
    },
    {
        "symbol": "VUSDT-USD",
        "company_name": "-",
        "last_price": "0.023733145",
        "change": "-0.00",
        "change_percent": "-0.01%",
        "market_time": "10:30 AM UTC",
        "volume": "284.47M",
        "average_volume_per_3_months": "-",
        "market_cap": "35.27M"
    },
    {
        "symbol": "WETH-USD",
        "company_name": "WETH USD",
        "last_price": "2908.5146",
        "change": "-122.88",
        "change_percent": "-4.05%",
        "market_time": "10:31 AM UTC",
        "volume": "1.07B",
        "average_volume_per_3_months": "1.95B",
        "market_cap": "-"
    },
    {
        "symbol": "SOL16116-USD",
        "company_name": "Wrapped Solana USD",
        "last_price": "144.54912",
        "change": "-9.28",
        "change_percent": "-6.03%",
        "market_time": "10:30 AM UTC",
        "volume": "777.93M",
        "average_volume_per_3_months": "1.28B",
        "market_cap": "-"
    }
] ''';
  static const silverJson = '''[
    {
        "silver_id": 1,
        "name": "جرام فضة نقي عيار 99.9",
        "current_price_in_egp": "41.77",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.05",
        "current_price_in_usd": "0.88",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.14",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "41.77",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.05",
                "price_in_usd": "0.88",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.14",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 2,
        "name": "جرام فضة بريطاني عيار 95.8",
        "current_price_in_egp": "40.01",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.05",
        "current_price_in_usd": "0.84",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.18",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "40.01",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.05",
                "price_in_usd": "0.84",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.18",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 3,
        "name": "جرام فضة استرليني عيار 92.5",
        "current_price_in_egp": "38.64",
        "current_rate_change_in_egp": "-0.01",
        "current_rate_change_percent_in_egp": "-0.03",
        "current_price_in_usd": "0.81",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.22",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "38.64",
                "rate_change_in_egp": "-0.01",
                "rate_change_percent_in_egp": "-0.03",
                "price_in_usd": "0.81",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.22",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 4,
        "name": "جرام فضة عيار 916",
        "current_price_in_egp": "38.26",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.05",
        "current_price_in_usd": "0.80",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.23",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "38.26",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.05",
                "price_in_usd": "0.80",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.23",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 5,
        "name": "جرام فضة عيار 875 (الفضة السعودي)",
        "current_price_in_egp": "36.55",
        "current_rate_change_in_egp": "-0.01",
        "current_rate_change_percent_in_egp": "-0.03",
        "current_price_in_usd": "0.77",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.3",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "36.55",
                "rate_change_in_egp": "-0.01",
                "rate_change_percent_in_egp": "-0.03",
                "price_in_usd": "0.77",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.3",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 6,
        "name": "جرام فضة عيار 800",
        "current_price_in_egp": "33.41",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.06",
        "current_price_in_usd": "0.70",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.41",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "33.41",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.06",
                "price_in_usd": "0.70",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.41",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 7,
        "name": "جرام فضة عيار 750",
        "current_price_in_egp": "31.33",
        "current_rate_change_in_egp": "-0.01",
        "current_rate_change_percent_in_egp": "-0.03",
        "current_price_in_usd": "0.66",
        "current_rate_change_in_usd": "0.01",
        "current_rate_change_percent_in_usd": "1.52",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "31.33",
                "rate_change_in_egp": "-0.01",
                "rate_change_percent_in_egp": "-0.03",
                "price_in_usd": "0.66",
                "rate_change_in_usd": "0.01",
                "rate_change_percent_in_usd": "1.52",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    },
    {
        "silver_id": 8,
        "name": "جرام فضة عيار 585",
        "current_price_in_egp": "24.43",
        "current_rate_change_in_egp": "-0.02",
        "current_rate_change_percent_in_egp": "-0.08",
        "current_price_in_usd": "0.51",
        "current_rate_change_in_usd": "-0.01",
        "current_rate_change_percent_in_usd": "-1.92",
        "scraped_at": "2024-05-08 02:00:07",
        "prices": [
            {
                "price_in_egp": "24.43",
                "rate_change_in_egp": "-0.02",
                "rate_change_percent_in_egp": "-0.08",
                "price_in_usd": "0.51",
                "rate_change_in_usd": "-0.01",
                "rate_change_percent_in_usd": "-1.92",
                "scraped_at": "2024-05-08 02:00:07"
            }
        ]
    }
] ''';
}

