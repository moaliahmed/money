import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/cubit/app_cubit.dart';

import '../../../core/assets_manager.dart';
import '../model/silver_item.dart';
import '../model/silver_model.dart';

class SilverPageView extends StatefulWidget {
  SilverPageView({
    super.key,
  });

  @override
  State<SilverPageView> createState() => _SilverPageViewState();
}

class _SilverPageViewState extends State<SilverPageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<SilverModel>>(
          stream: cubit.getSilverStream(),
          builder: (context, snapshot) {
            // print(snapshot.data?[0].name);
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return cubit.isDark
                    ? Center(
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .2,
                            child: Lottie.asset(ImageAssets.loadingDarkLottie)))
                    : Center(
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * .2,
                            child:
                                Lottie.asset(ImageAssets.loadingLightLottie)));
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
                }  else {
                  return Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  SizedBox(
                                      height: 45,
                                      width: 40,
                                      child: Lottie.asset(
                                        ImageAssets.arrowLottieRight,
                                      )),
                                  Text(
                                    'الذهب',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text('اخر تحديث : ',
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            Text(
                                cubit.returnRelativeTime(
                                    snapshot.data![0].scrapedAt!),
                                style:
                                    Theme.of(context).textTheme.displayLarge),
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
                              child: SilverItemComponent(
                                image: ImageAssets.diamondSilverIcon,
                                currentEgyPrice: double.parse(
                                    snapshot.data![index].currentPriceInEgp!),
                                currentUsdPrice: double.parse(
                                    snapshot.data![index].currentPriceInUsd!),
                                name: cubit.silverList[index].name!,
                                currentEgyPriceChange: double.parse(snapshot
                                    .data![index]
                                    .currentRateChangePercentInEgp!),
                                price: cubit.extractSilverBuyPrices(
                                    snapshot.data![index].prices!),
                                currentUsdPriceChange: double.parse(snapshot
                                    .data![index]
                                    .currentRateChangePercentInUsd!),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
                }
            }
          },
        );
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
