import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/cubit/app_cubit.dart';

import '../../../core/assets_manager.dart';
import '../model/gold_item.dart';
import '../model/gold_model.dart';

class GoldPageView extends StatefulWidget {
  GoldPageView({super.key, });

  @override
  State<GoldPageView> createState() => _GoldPageViewState();
}

class _GoldPageViewState extends State<GoldPageView>with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<GoldModel>>(
            stream: cubit.getGoldStream(),
            builder: (context, snapshot) {

              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return cubit.isDark
                      ? Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * .2,
                          child:
                          Lottie.asset(ImageAssets.loadingLightLottie)))
                      : Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * .2,
                          child: Lottie.asset(
                              ImageAssets.loadingLightLottie)));
                default:
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('Some Error Occurred'),
                    );
                  } else {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  'اخر تحديث : ',
                                  style: Theme.of(context).textTheme.headlineLarge
                              ),
                              Text(
                                  cubit.returnRelativeTime(
                                      snapshot.data![0].scrapedAt!),
                                  style: Theme.of(context).textTheme.displayLarge
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text('الفضه',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
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
                                onTap: () {},
                                child: GoldItemComponent(
                                  image:
                                  ImageAssets.diamondGoldIcon,
                                  currentBuyPrice: int.parse(
                                      snapshot.data![index]
                                          .currentBuyPrice!),
                                  currentSellPrice: int.parse(
                                      snapshot.data![index]
                                          .currentSellPrice!),
                                  name: cubit.goldList[index].name!,
                                  price: cubit.extractGoldBuyPrices(
                                      snapshot
                                          .data![index].prices!),
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
