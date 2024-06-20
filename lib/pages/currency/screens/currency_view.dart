import 'package:flutter/material.dart';
import '../model/bank_pageview.dart';
import '../model/black_market_pageview.dart';

class CurrencyView extends StatelessWidget {
  const CurrencyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.primary,
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
                  color: Theme.of(context).colorScheme.background,
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: PageView(
                  children: [
                    BankPageView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
