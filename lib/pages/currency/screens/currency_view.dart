import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/core/color_manger.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/currency/model/currency_bank.dart';

import '../model/item.dart';

class CurrencyView extends StatelessWidget {
  const CurrencyView({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.primary,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                cubit.getDate();
              },
              icon: Image.asset(
                'assets/icons/settings_outlined.png',
                width: 25,
                color: ColorManager.white,
              ),
            ),
            title: Image.asset(
              'assets/images/CoinmoneyLogo.png',
              color: ColorManager.white,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/3.1.png',
                  width: 25,
                  color: ColorManager.white,
                ),
              ),
            ],
            toolbarHeight: 75,
          ),
          backgroundColor: ColorManager.primary,
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),

                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
