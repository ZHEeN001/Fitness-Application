import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_fitness/core/const/color_constants.dart';
import 'package:flutter_fitness/core/service/notification_service.dart';
import 'package:flutter_fitness/screen/onboarding/page/onboarding_page.dart';
import 'package:flutter_fitness/screen/tab_bar/page/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCJC1LjiDnuAOhsQtZLJetoqYzkf79MYZA",
      authDomain: "fitness-application-18f56.firebaseapp.com",
      databaseURL:
          "https://fitness-application-18f56-default-rtdb.asia-southeast1.firebasedatabase.app",
      projectId: "fitness-application-18f56",
      storageBucket: "fitness-application-18f56.appspot.com",
      messagingSenderId: "546235763175",
      appId: "1:546235763175:web:9578f183cffd54bff4d542",
      measurementId: "G-PKNGNFHLSG",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      NotificationService.flutterLocalNotificationsPlugin;

  @override
  initState() {
    super.initState();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings();
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);

    tz.initializeTimeZones();

    // flutterLocalNotificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
    // flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: selectNotification);
  }

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      theme: ThemeData(
        textTheme:
            TextTheme(bodyText1: TextStyle(color: ColorConstants.textColor)),
        fontFamily: 'NotoSansKR',
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: isLoggedIn ? TabBarPage() : OnboardingPage(),
    );
  }

  Future selectNotification(String? payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("PayLoad"),
          content: Text("Payload : $payload"),
        );
      },
    );
  }

//   void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
//     final String? payload = notificationResponse.payload;
//     if (notificationResponse.payload != null) {
//       debugPrint('notification payload: $payload');
//     }
//     await Navigator.push(
//       context,
//       MaterialPageRoute<void>(builder: (context) => build(payload)),
//     );
// }

  // Future<void> onSelectNotification(String payload) async {
  //     if (payload != null) {
  //       debugPrint('notification payload: ' + payload);
  //     }
  // }
}
