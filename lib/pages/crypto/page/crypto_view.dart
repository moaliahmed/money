import 'package:flutter/material.dart';
import 'package:money/pages/crypto/page/crypto_pageview.dart';
import 'package:money/pages/crypto/page/stocks_pageview.dart';
class CryptoView extends StatelessWidget {
  const CryptoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ColorManager.primary,
      body: Directionality(
        textDirection: TextDirection.ltr,
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
                    CryptoPageView(),
                    StocksPageView(),]
                  ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
