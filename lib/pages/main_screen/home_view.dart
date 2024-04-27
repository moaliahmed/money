import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/crypto/page/crypto_view.dart';
import 'package:money/pages/currency/screens/currency_view.dart';

import '../../core/assets_manager.dart';
import '../../core/color_manger.dart';
import '../../core/constants_manager.dart';
import '../gold/screen/gold_view.dart';
import '../settings/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<Widget> _view = [
    CurrencyView(),
    GoldView(),
    CryptoView(),
   // NewsLayout()
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;
   return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) {

      },builder: (context, state) {
        var cubit=AppCubit.get(context);
        return  Scaffold(

          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            centerTitle: true,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.coinMoneyIcon,
                  color: ColorManager.white,
                  height: 30,
                ),
                Text(
                  ' Coin Money',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.white),
                )
              ],
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
                color: ColorManager.white,
              ),
              Image.asset(
                ImageAssets.goldIcon2,
                height: myHeight * .035,
                color: ColorManager.white,
              ),
              Image.asset(
                ImageAssets.stocksIcon,
                height: myHeight * .03,
                color: ColorManager.white,
              ),
              Image.asset(
                ImageAssets.newsIcon,
                height: myHeight * .03,
                color: ColorManager.white,
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
                // UserAccountsDrawerHeader(
                //   currentAccountPicture: CircleAvatar(
                //     backgroundImage: NetworkImage(
                //         'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
                //   ),
                //   accountEmail: Text('Mostafa@gmail.com'),
                //   accountName: Text(
                //     'Mostafa Gomaa',
                //     style: TextStyle(fontSize: 24.0),
                //   ),
                //   decoration: BoxDecoration(
                //     color: Theme.of(context).colorScheme.primary,
                //   ),
                // ),
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width*0.5,
                ),
                // ListTile(
                //   leading:  Icon(Icons.logout,color: Theme.of(context).colorScheme.secondary,),
                //   title:  Text(
                //     'Log Out',
                //     style: Theme.of(context).textTheme.displayLarge!.copyWith( fontSize: 24),
                //   ),
                //   onTap: () {},
                // ),
                ListTile(
                  leading:  Icon(Icons.login,color: Theme.of(context).colorScheme.primary,),
                  title:  Text(
                    'Log In',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith( fontSize: 24),
                  ),
                  onTap: () {},
                ),
                Divider(indent: 40, endIndent: 30),
                ListTile(
                  leading:  Icon(Icons.brightness_4_outlined,color: Theme.of(context).colorScheme.primary,),
                  title:  Text('Theme',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20.0),),
                  trailing: Switch(

                    onChanged: (value) {
                      cubit.changeAppMode();
                    },
                    value: cubit.isDark,
                  ),
                ),
                 ListTile(
                  leading: Icon(Icons.notifications_none_outlined,color: Theme.of(context).colorScheme.primary,),
                  title: Text('Notifications',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt,color: Theme.of(context).colorScheme.primary),
                  title: Text('Share With friends',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.contact_support,color: Theme.of(context).colorScheme.primary),
                  title: Text('Support',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: AppConstants.arrowIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline_rounded,color: Theme.of(context).colorScheme.primary),
                  title: Text('About Us',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
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
