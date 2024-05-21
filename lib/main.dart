import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:money/src/app_root.dart';
import 'core/bloc_observer/bloc_observer.dart';
import 'core/local_notifications.dart';
import 'core/shared_prefrence.dart';

final navigatorKey = GlobalKey<NavigatorState>();
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CubitObserver();
  await SharedPrefrenceHelper.init();
  bool? isDark = SharedPrefrenceHelper.getData(key: 'isDark');

  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotifications.init();
  var initialNotification =
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  if (initialNotification?.didNotificationLaunchApp == true) {
    // LocalNotifications.onClickNotification.stream.listen((event) {
    Future.delayed(const Duration(seconds: 1), () {
      // print(event);
      print('presed');
      navigatorKey.currentState!.pushNamed('/another',
          arguments: initialNotification?.notificationResponse?.payload);
    });
  }
  runApp(AppRoot(isDark: isDark));
}
