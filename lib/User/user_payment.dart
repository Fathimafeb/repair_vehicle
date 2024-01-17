import 'package:flutter/material.dart';
import 'package:repair_vehicle/User/user_mech_request_list.dart';

class User_payment extends StatefulWidget {
  const User_payment({super.key});

  @override
  State<User_payment> createState() => _User_paymentState();
}

class _User_paymentState extends State<User_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          Center(
            child: Column(
              children: [
                Image.asset("Assets/check 1.png"),
                Text("Succesfull",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20),)
              ],
            ),
          ),


          InkWell(onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Usermechreq();
            },));
          },
            child: Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 2, 74, 133)),
              child: Center(
                child: Text(
                  "Back to Home Page",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
