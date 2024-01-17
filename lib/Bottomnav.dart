import 'package:flutter/material.dart';
import 'package:repair_vehicle/admin/payment.dart';

import 'admin/homepage.dart';
import 'admin/notification.dart';


class Bottom_nava extends StatefulWidget {
  const Bottom_nava({super.key});

  @override
  State<Bottom_nava> createState() => _Bottom_navaState();
}

class _Bottom_navaState extends State<Bottom_nava> {
  int _currenSelectedIndex=0;
  var pages=[Homepage(),Payment(),Notify()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currenSelectedIndex],

      bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          currentIndex:_currenSelectedIndex,
          onTap: (newIndex) {
            setState(() {
              _currenSelectedIndex = newIndex;
            });
          },
          items:const [
            BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon:Icon(Icons.payments),label:'Payments'),
            BottomNavigationBarItem(icon:Icon(Icons.message_sharp),label:'Notifications'),

          ]),


    );
  }
}
