import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Bottomnav.dart';
import 'package:repair_vehicle/Mech/Bott.dart';
import 'package:repair_vehicle/Mech/Servicemech.dart';
import 'package:repair_vehicle/Mech/mech_servicehome.dart';
import 'package:repair_vehicle/Mech/mechstatus_completed.dart';
import 'package:repair_vehicle/Mech/mechstatus_reject.dart';
import 'package:repair_vehicle/User/User_mechbill.dart';
import 'package:repair_vehicle/User/Userprofile.dart';
import 'package:repair_vehicle/User/user_mech_request_list.dart';
import 'package:repair_vehicle/User/user_rating.dart';
import 'package:repair_vehicle/User/usersignup.dart';
import 'package:repair_vehicle/admin/Admin_login.dart';
import 'package:repair_vehicle/admin/home2.dart';
import 'package:repair_vehicle/admin/homepage.dart';
import 'package:repair_vehicle/admin/page2.dart';
import 'package:repair_vehicle/admin/payment.dart';

import 'Mech/mech_home.dart';
import 'User/userlogin.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Page2()
    );
  }
}

