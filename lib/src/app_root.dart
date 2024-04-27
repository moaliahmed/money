import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/core/them_manager.dart';
import 'package:money/pages/currency/screens/currency_view.dart';
import 'package:money/pages/login/screens/open_screen.dart';
import 'package:money/pages/main_screen/home_view.dart';
import 'package:money/pages/settings/settings_view.dart';

import '../pages/main_screen/scroll.dart';
import '../cubit/app_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key, required this.isDark});

  final bool? isDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit()
          ..initialFunction()
          ..changeAppMode(fromShared: isDark),
        child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit=AppCubit.get(context);
            return MaterialApp(
              theme: lightTheme(),
              darkTheme: darkTheme(),
              themeMode:cubit.isDark? ThemeMode.dark:ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        ));
  }
}
