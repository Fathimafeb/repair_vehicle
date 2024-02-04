import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/Servicemech.dart';
import 'package:repair_vehicle/Mech/mech_home.dart';
import 'package:repair_vehicle/Mech/requestlist.dart';
import 'package:repair_vehicle/User/mech_rating.dart';

import 'Acceptedlist.dart';
import 'mech_notification.dart';
import 'mechedit_pr.dart';


class Mechservice extends StatefulWidget {
  const Mechservice({super.key});

  @override
  State<Mechservice> createState() => _MechserviceState();
}

class _MechserviceState extends State<Mechservice> {
  int indexNum = 0;
  List page= [Mech_home(),Servicemech(),Mech_rating()];


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
        BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Service'),
        BottomNavigationBarItem(icon:Icon(Icons.star),label:'Rating'),

      ],
    ),
      body: page[indexNum],
    );
  }

  }

