import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:money/pages/main_screen/home_view.dart';

import '../../../core/assets_manager.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

List text = ['CoinMoney'];

class _OpenScreenState extends State<OpenScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 7),
        () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:  BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.coinMoneyIcon,color: Theme.of(context).colorScheme.onPrimary,),
                const Gap(6),
                AnimatedTextKit(
                  totalRepeatCount: 2,
                  animatedTexts: [
                    for (final txt in text)
                      WavyAnimatedText(txt,
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 52,
                              color: Theme.of(context).colorScheme.onPrimary),
                          textAlign: TextAlign.center)
                  ],
                ),
              ],
            ), Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*.65,
                child: LinearProgressIndicator(
                    color: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Theme.of(context).colorScheme.background,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
