import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:repair_vehicle/admin/home2.dart';
import 'package:repair_vehicle/admin/notification.dart';
import 'package:repair_vehicle/admin/payment.dart';

import 'Userlist.dart';
import 'mechaniclist.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexNum = 0;
  List page= [Home2(),Payment(),Notify()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNum,
      selectedIconTheme: IconThemeData(color: Colors.black,),
      onTap: (int Index) {
        setState(() {
          indexNum =Index;
        });
        },
      items: const [
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.payments),label:'Payments'),
        BottomNavigationBarItem(icon:Icon(Icons.message_sharp),label:'Notifications'),

      ],
    ),
       body: page[indexNum],
    );
  }
}
