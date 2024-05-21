import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/crypto/page/crypto_view.dart';
import 'package:money/pages/currency/screens/currency_view.dart';
import 'package:money/pages/login/screens/login_screen.dart';

import '../../core/assets_manager.dart';
import '../../core/constants_manager.dart';
import '../../core/local_notifications.dart';
import '../gold/screen/gold_view.dart';
import '../news/presentation/screans/news_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<Widget> _view = [
   const CurrencyView(),
   const GoldView(),
   const CryptoView(),
    const NewsLayout()
    //SettingView()
  ];
  String name='الدولار الامريكي';
  String price ='50';

  @override
  Widget build(BuildContext context) {
    //double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            centerTitle: true,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.coinMoneyIcon,
                  color: Theme.of(context).colorScheme.onSecondary,
                  height: 30,
                ),
                Text(
                  ' Coin Money',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSecondary),
                )
              ],
            ),
            actions:const [
              SizedBox(
                width: 25,
              )
            ],
            toolbarHeight: 75,
          ),
          body: SafeArea(
            child: IndexedStack(
              index: currentIndex,
              children: _view,
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            index: currentIndex,
            height: 55,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            backgroundColor: Theme.of(context).colorScheme.background,
            buttonBackgroundColor: Theme.of(context).colorScheme.primary,
            color: Theme.of(context).colorScheme.primary,
            items: [
              Image.asset(
                ImageAssets.homeIcon2,
                height: myHeight * .03,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              Image.asset(
                ImageAssets.goldIcon2,
                height: myHeight * .035,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              Image.asset(
                ImageAssets.stocksIcon,
                height: myHeight * .03,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              Image.asset(
                ImageAssets.newsIcon,
                height: myHeight * .03,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
          drawer: Drawer(
            // child:GetBuilder<logOutControllerImp>(builder: (controller)=>
            // controller.statusRequest == StatusRequest.loading?
            backgroundColor: Theme.of(context).colorScheme.background,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.login,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    'Log In',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const SignInView(),
                        ));
                  },
                ),
              const  Divider(indent: 40, endIndent: 30),
                ListTile(
                  leading: Icon(
                    Icons.brightness_4_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    'Theme',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 20.0),
                  ),
                  trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Theme.of(context).colorScheme.primary,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor:Theme.of(context).colorScheme.primary ,
                    onChanged: (value) {
                      cubit.changeAppMode();
                    },
                    value: cubit.isDark,
                  ),
                ),
                ListTile(
                  onTap: () {
                    LocalNotifications.showSimpleNotification(
                        title: "Simple Notification",
                        body: "سعر $name وصل الي $price",
                        payload: "This is simple data");
                  },
                  leading: Icon(
                    Icons.notifications_none_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    'Notifications',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt,
                      color: Theme.of(context).colorScheme.primary),
                  title: Text('Share With friends',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 20)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.contact_support,
                      color: Theme.of(context).colorScheme.primary),
                  title: Text('Support',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 20)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline_rounded,
                      color: Theme.of(context).colorScheme.primary),
                  title: Text('About Us',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 20)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
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
/*
  BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
       // backgroundColor: ColorManager.white,
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
 */
