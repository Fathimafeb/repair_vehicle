import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'mechstatus_completed.dart';

class Acceptedlists extends StatefulWidget {
  const Acceptedlists({super.key});

  @override
  State<Acceptedlists> createState() => _AcceptedlistsState();
}

class _AcceptedlistsState extends State<Acceptedlists> {
  final datetime=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    StreamBuilder(stream: FirebaseFirestore.instance.collection("Userreq").where('status',whereIn: [1,3,4,5]).snapshots(),builder: (context, snapshot) {
      final user = snapshot.data?.docs ?? [];

      return ListView.builder(
        itemCount: user.length,
          itemBuilder:
         (context,index) {
          return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 192, 210, 224)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(mainAxisAlignment:  MainAxisAlignment.spaceEvenly ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("Assets/Ellipse 11.png"),
                            ),
                            Text("${user[0]['name']}", style: TextStyle(
                                fontSize: 20),)
                          ],
                        ),
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "${user[0]['service']}", style: TextStyle(fontSize: 20),),
                          Text("Date", style: TextStyle(fontSize: 20),),
                          Text("Time", style: TextStyle(fontSize: 20),),
                          Text("${user[0]['place']}", style: TextStyle(fontSize: 20),),

                        ],
                      ),
                     // Container(
                     //   height: 40,
                     //   width: 120,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         color: Colors.red),
                    //     child: Center(child: Text("payment pending", style: TextStyle(
                    //         color: Colors.white),)),
                    //   )

                                user[0]['status'] == 1
                    ? InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Mech_status(
                                  id: user[0].id,
                                  name: user[0]['name'],
                                  place: user[0]
                                  ['place'],
                                  service: user[0]
                                  ['service'],
                                  status: user[0]
                                  ['status'], ),
                        ));
                  },
                  child: Container(
                      width: 90,
                      height: 40,
                      child: Center(
                        child: Text("add payment ",
                            style: TextStyle()),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(12),
                          color: Color(0xff49cd6e))),
                                )
                    : user[0]['status'] == 3
                    ? Container(
                    height: 40,
                    child: Center(
                      child: Text("payment pending ",
                          style: TextStyle()),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(12),
                        color: Color.fromARGB(
                            255, 205, 99, 73)))
                    : user[0]['status'] == 4
                    ? Container(
                  // width: 110,
                    height: 40,
                    child: Center(
                        child: Padding(
                          padding:
                          const EdgeInsets.all(8.0),
                          child: Text(
                            "Payment ",
                          ),
                        )),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(12),
                        color: Color.fromARGB(
                            255, 90, 240, 14)))
                                :user[index]['status'] == 5
                                ?Container(
                  height: 40,
                  child: Center(
                       child: Padding(
                         padding:
                          const EdgeInsets.all(
                             8.0),
                          child: Text(
                              "Rejected",
                                 ),
                                  )),
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.circular(
                                     12),
                                     color: Color.fromARGB(
                                         255, 240, 101, 14)))
                    : Text("error"),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          );
        }
      );
    }
      ),
    );



  }
}
