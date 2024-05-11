import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../core/assets_manager.dart';
import '../../../cubit/app_cubit.dart';
import '../model/stocks_item.dart';
import '../model/stocks_model.dart';

class StocksPageView extends StatefulWidget {
  const StocksPageView({super.key});

  @override
  State<StocksPageView> createState() => _StocksPageViewState();
}

class _StocksPageViewState extends State<StocksPageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<StocksModel>>(
            stream: cubit.getStocksStream(),
            builder: (context, snapshot) {
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
                              ImageAssets.loadingLightLottie)));                default:
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('Some Error Occurred'),
                    );
                  } else {
                    return Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Last Update : ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              Text(snapshot.data![0].marketTime!,
                                  style:
                                  Theme.of(context).textTheme.displayLarge),
                             const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    SizedBox(
                                        height: 20,
                                        width: 30,
                                        child: Lottie.asset(
                                          ImageAssets.arrowLottieDarkLeft3,
                                        )),
                                    Text('Crypto',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 20)),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                           // controller: cubit.stocksScrollController,
                            separatorBuilder: (context, index) {
                              return const Divider(
                                indent: 15,
                                endIndent: 15,
                                height: 1,
                                color: Colors.grey,
                              );
                            },
                            itemCount: 20,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                child: StocksItemComponent(
                                  lastPrice:
                                      snapshot.data![index].lastPrice!,
                                  volume: snapshot.data![index].volume!,
                                  name: cubit.cryptoList[index].companyName!,
                                  change:
                                      snapshot.data![index].change!,
                                  changePercent:
                                  double.parse(snapshot.data![index].changePercent!.replaceAll(RegExp(r'%$'), '')),
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
  bool get wantKeepAlive => true;
}

