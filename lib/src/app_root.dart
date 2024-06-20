import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/core/them_manager.dart';
import 'package:money/pages/login/screens/open_screen.dart';
import '../cubit/app_cubit.dart';
import '../pages/currency/screens/select_coin.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key, required this.isDark});

  final bool? isDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..initialFunction()
        ..getCurrencyAiData()
        ..getGoldAiData()
        ..changeAppMode(fromShared: isDark)
        ..createDatabase(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return MaterialApp(
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: const OpenScreen(),
          );
        },
      ),
    );
  }
}
