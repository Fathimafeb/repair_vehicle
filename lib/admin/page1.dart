import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 210, 224),
        body: Center(
          child: Container(
            height: 190,
            width: 190,
            child: Image.asset('Assets/tow 1 (1).png', fit: BoxFit.fill),
          ),
        ));
  }
}
