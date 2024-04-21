import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:money/src/app_root.dart';

import 'core/bloc_observer/bloc_observer.dart';

void main(){
  Bloc.observer= CubitObserver();
  runApp(AppRoot());
}