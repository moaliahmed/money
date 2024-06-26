import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/pages/crypto/model/crypto_item.dart';
import 'package:money/pages/crypto/model/crypto_model.dart';

import '../../../core/assets_manager.dart';
import '../../../cubit/app_cubit.dart';

class CryptoPageView extends StatefulWidget {
  const CryptoPageView({super.key});

  @override
  State<CryptoPageView> createState() => _CryptoPageViewState();
}

class _CryptoPageViewState extends State<CryptoPageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return StreamBuilder<List<CryptoModel>>(
            stream: cubit.getCryptoStream(),
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
                  }  else {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
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
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text('Stocks',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 20)),
                                    SizedBox(
                                        height: 30,
                                        width: 50,
                                        child: Lottie.asset(
                                          ImageAssets.arrowLottieRight,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                           // controller: cubit.cryptoScrollController,
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
                                child: CryptoItemComponent(
                                  lastPrice: double.parse(
                                      snapshot.data![index].lastPrice!),
                                  volume: snapshot.data![index].volume!,
                                  name: cubit.cryptoList[index].companyName!,
                                  change: double.parse(
                                      snapshot.data![index].change!),
                                  changePercent:
                                      snapshot.data![index].changePercent!,
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
