import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/cubit/app_cubit.dart';

import '../../../core/assets_manager.dart';
import 'currency_bank_model.dart';
import 'currency_item.dart';

class BankPageView extends StatefulWidget {
  BankPageView({super.key, });

  @override
  State<BankPageView> createState() => _BankPageViewState();
}

class _BankPageViewState extends State<BankPageView>with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<CurrencyBankModel>>(
            stream: cubit.bankCurrencyStream,
            builder: (context, snapshot) {
              //  print(snapshot.data?[0].name);
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child:Lottie.asset(ImageAssets.loadingLottie));
                default:
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Some Error Occurred'),
                    );
                  } else {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text('السوق السوداء',style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 18)),
                                    SizedBox(
                                        height:20,
                                        width: 40,
                                        child: Lottie.asset(ImageAssets.arrowLottieDarkLeft3,)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            controller: cubit.currencyScrollController,
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
                              double opacity = cubit.scrollAnimation(index, 90,cubit.currencyScrollController);
                              double scale = opacity;
                              if (opacity > 1) opacity = 1.0;
                              if (opacity < 0) opacity = 0.0;
                              if (scale > 1) scale = 1.0;
                              return Opacity(
                                opacity: opacity,
                                child: Transform(
                                  transform: Matrix4.identity()..scale(scale,1.0),
                                  child: InkWell(
                                    onTap: () {},
                                    child: CurrencyItemComponent(
                                      image: cubit.currencyList[index].image!,
                                      currentBuyPrice: double.parse(
                                          snapshot.data![index].currentBuyPrice!),
                                      currentSellPrice: double.parse(
                                          snapshot.data![index].currentSellPrice!),
                                      name: cubit.currencyList[index].name!,
                                      currentBuyPriceChange: double.parse(cubit
                                          .currencyList[index]
                                          .currentBuyPriceChange!),
                                      price: cubit.extractCurrencyBuyPrices(
                                          snapshot.data![index].prices!),
                                      currentSellPriceChange: double.parse(snapshot
                                          .data![index].currentSellPriceChange!),
                                    ),
                                  ),
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
