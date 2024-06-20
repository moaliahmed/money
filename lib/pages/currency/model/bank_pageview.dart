import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/currency/screens/select_coin.dart';

import '../../../core/assets_manager.dart';
import 'currency_bank_model.dart';
import 'currency_item.dart';

class BankPageView extends StatefulWidget {
  BankPageView({
    super.key,
  });

  @override
  State<BankPageView> createState() => _BankPageViewState();
}

class _BankPageViewState extends State<BankPageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<CurrencyBankModel>>(
            stream: cubit.getBankCurrencyStream(),
            builder: (context, snapshot) {
              //  print(snapshot.data?[0].name);
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return cubit.isDark
                      ? Center(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                              child:
                                  Lottie.asset(ImageAssets.loadingDarkLottie)))
                      : Center(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                              child: Lottie.asset(
                                  ImageAssets.loadingLightLottie)));
                default:
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return cubit.isDark
                        ? Center(
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height * .4,
                                child:
                                    Lottie.asset(ImageAssets.errorDarkLottie)))
                        : Center(
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height * .4,
                                child: Lottie.asset(
                                    ImageAssets.errorLightLottie)));
                  } else {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('اخر تحديث : ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              // SizedBox(height: myHeight * 0.01),
                              Text(
                                  cubit.returnRelativeTime(
                                      snapshot.data![0].scrapedAt!),
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              Spacer(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            //controller: cubit.currencyScrollController,
                            separatorBuilder: (context, index) {
                              return const Divider(
                                indent: 15,
                                endIndent: 15,
                                height: 1,
                                color: Colors.grey,
                              );
                            },
                            itemCount: snapshot.data!.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SelectCurrencyCoin(
                                          name: cubit.currencyList[index].name!,
                                          image:
                                              cubit.currencyList[index].image!,
                                          currentBuyPrice: snapshot
                                              .data![index].currentBuyPrice!,
                                          currentSellPrice: snapshot
                                              .data![index].currentSellPrice!,
                                          dataList:
                                              snapshot.data![index].prices!,
                                          scrapedAt: cubit.returnRelativeTime(
                                              snapshot.data![0].scrapedAt!),
                                          currentSellRateChanges:
                                              snapshot.data![index]
                                                  .currentSellPriceChange!.toDouble() ,
                                          currentBuyRateChanges:
                                              cubit.currencyList[index]
                                                  .currentBuyPriceChange!.toDouble(),
                                        ),
                                      ));
                                },
                                child: CurrencyItemComponent(
                                  image: cubit.currencyList[index].image!,
                                  currentBuyPrice:
                                      snapshot.data![index].currentBuyPrice!,
                                  currentSellPrice:
                                      snapshot.data![index].currentSellPrice!,
                                  name: cubit.currencyList[index].name!,
                                  currentBuyPriceChange: cubit
                                      .currencyList[index]
                                      .currentBuyPriceChange!.toDouble(),
                                  price: cubit.extractCurrencyBuyPrices(
                                      snapshot.data![index].prices!),
                                  currentSellPriceChange: snapshot
                                      .data![index].currentSellPriceChange!.toDouble(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    );
                  }
              }
            });
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
