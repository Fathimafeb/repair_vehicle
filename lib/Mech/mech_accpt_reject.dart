import 'package:flutter/material.dart';

import 'mechstatus_completed.dart';
import 'mechstatus_reject.dart';

class Mechaccpt extends StatefulWidget {
  const Mechaccpt({super.key});

  @override
  State<Mechaccpt> createState() => _MechaccptState();
}

class _MechaccptState extends State<Mechaccpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios),),
      body:Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 192, 210, 224),borderRadius: BorderRadius.circular(20)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Name",style: TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Problem",style: TextStyle(fontSize: 18),),
                                Text(": Fuel leaking",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Place",style: TextStyle(fontSize: 18),),
                                Text(": Kozhikode beach road",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date",style: TextStyle(fontSize: 18),),
                                Text(": 12/5/2023",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Time",style: TextStyle(fontSize: 18),),
                                Text(": 10:00 am",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Contact number",style: TextStyle(fontSize: 18),),
                                Text(": 0000000000",style: TextStyle(fontSize: 18),)
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            InkWell(onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Mech_status();
                              },));
                            },
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.green,),
                                child:Center(child: Text("Accept",style: TextStyle( fontSize: 20,color: Colors.white),)) ,
                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Mechstatus_reject();
                              },));
                            },
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.redAccent,),
                                child:Center(child: Text("Reject",style: TextStyle( fontSize: 20,color: Colors.white),)) ,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                )
              ],
            ),
            Positioned(top: 80,left: 135,
              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Image.asset("Assets/Ellipse 11.png"),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
