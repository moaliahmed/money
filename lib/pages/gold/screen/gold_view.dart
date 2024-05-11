import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/gold/screen/silver_pageview.dart';
import 'gold_pageview.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          //backgroundColor: ColorManager.primary,
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
              const  SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:Theme.of(context).colorScheme.background,
                      borderRadius:const BorderRadius.only(
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
