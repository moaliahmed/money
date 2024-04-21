import 'package:flutter/material.dart';
import 'package:money/pages/currency/screens/currency_view.dart';

import '../../core/assets_manager.dart';
import '../../core/color_manger.dart';
import '../settings/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<Widget> _view = const [
    CurrencyView(),
   // GoldScreen(),
    //NewsLayout(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: _view,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorManager.white,
        unselectedIconTheme: const IconThemeData(size: 39),
        selectedIconTheme: const IconThemeData(size: 39),
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              ImageAssets.homeIcon1,
              height: myHeight * .03,
              color: ColorManager.grey,
            ),
            activeIcon: Image.asset(
              ImageAssets.homeIcon2,
              height: myHeight * .03,
              color: ColorManager.primary,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              ImageAssets.goldIcon1,
              height: myHeight * .035,
              color: ColorManager.grey,
            ),
            activeIcon: Image.asset(
              ImageAssets.goldIcon2,
              height: myHeight * .035,
              color: ColorManager.primary,
            ),
          ),
          // BottomNavigationBarItem(
          //   label: '',
          //   icon: Image.asset(
          //     ImageAssets.trendIcon1,
          //     height: myHeight * .03,
          //     color: ColorManager.grey,
          //   ),
          //   activeIcon: Image.asset(
          //     ImageAssets.trendIcon2,
          //     height: myHeight * .03,
          //     color: ColorManager.primary,
          //   ),
          // ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              ImageAssets.profileIcon1,
              height: myHeight * .03,
              color: ColorManager.grey,
            ),
            activeIcon: Image.asset(
              ImageAssets.profileIcon2,
              height: myHeight * .03,
              color: ColorManager.primary,
            ),
          ),
        ],
      ),
    );
  }
}
