import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:money/core/color_manger.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/currency/model/currency_bank_model.dart';
import 'package:money/pages/gold/model/gold_item.dart';
import 'package:money/pages/gold/screen/silver_pageview.dart';

import '../../../core/assets_manager.dart';
import '../model/gold_model.dart';
import 'gold_pageview.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          //backgroundColor: ColorManager.primary,
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: PageView(

                      children: [
                        GoldPageView(),
                        SilverPageView(),]
                      ,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
