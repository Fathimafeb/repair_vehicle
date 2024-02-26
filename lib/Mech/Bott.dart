import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../User/mech_rating.dart';
import 'Servicemech.dart';
import 'mech_home.dart';

class Bott extends StatefulWidget {
  const Bott({super.key});

  @override
  State<Bott> createState() => _BottState();
}

class _BottState extends State<Bott> {
  int _currenSelectedIndex=0;
  var pages=[Mech_home(),Servicemech(),Mech_rating()];

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
            BottomNavigationBarItem(icon:Icon(Icons.engineering),label:'Request'),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Service'),
            BottomNavigationBarItem(icon:Icon(Icons.star),label:'Rating'),

          ]),


    );
  }
}
