import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:money/src/app_root.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/bloc_observer/bloc_observer.dart';
import 'core/shared_prefrence.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer= CubitObserver();
  await SharedPrefrenceHelper.init();
  bool? isDark=SharedPrefrenceHelper.getData(key: 'isDark');
  runApp(AppRoot( isDark: isDark));
}