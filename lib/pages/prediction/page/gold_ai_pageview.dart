import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:money/cubit/app_cubit.dart';

import '../../../core/assets_manager.dart';
import '../model/image_model.dart';

class GoldAiPageView extends StatelessWidget {
  const GoldAiPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          AppCubit.get(context).getCurrencyAiData();
          DateTime now = DateTime.now();
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 45,
                              width: 40,
                              child: Lottie.asset(ImageAssets.arrowLottieRight),
                            ),
                            Text(
                              ' توقع اسعار العملات',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          '${now.day + 1} - ${now.month} - ${now.year} ',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text('الاسم',
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(fontSize: 20)),
                          ),
                        ),
                        SizedBox(
                          width: myWeight * .3,
                          child: Text('سعر البيع',
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 20)),
                        ),
                        SizedBox(
                          width: myWeight * .2,
                          child: Text('سعر الشراء',
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 20)),
                        ),
                      ]),
                  SizedBox(
                    height: myHeight * .03,
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: cubit.goldAiList.length,
                      itemBuilder: (context, index) {
                        return Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: myHeight * 0.04,
                                      width: myWeight * 0.06,
                                      child: Image.asset(
                                          ImageAssets.diamondGoldIcon)),
                                  Text(goldAiNameList[index].name,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 20)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: myWeight * .3,
                              child: Text(
                                  cubit.goldAiList[index].sell!
                                      .toStringAsFixed(3),
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              width: myWeight * .2,
                              child: Text(
                                cubit.goldAiList[index].buy!.toStringAsFixed(3),
                                style: Theme.of(context).textTheme.displayLarge,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
