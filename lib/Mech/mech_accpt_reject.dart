
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/mech_home.dart';
import 'mechstatus_completed.dart';
import 'mechstatus_reject.dart';



class Mechaccpt extends StatefulWidget {
  String id;
  String name;
  String place;
  String service;
  var date;
  String contact;
  Mechaccpt(
      {super.key,
        required this.id,
        required this.name,
        required this.place,
        required this.service,
        required this.date,
        required this.contact});

  @override
  State<Mechaccpt> createState() => _MechaccptState();
}

class _MechaccptState extends State<Mechaccpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Mech_home();
              },));
            },
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Stack(
            children: [
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Userreq')
                      .doc(widget.id)
                      .snapshots(),
                  builder: (context, snapshot) {
                    final userdata = snapshot.data ?? [];
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 450,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 192, 210, 224),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${widget.name}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Problem",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${widget.service}",
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Place",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${widget.place}",
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [


                                          Text(
                                            "Date",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${widget.date}",
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Time",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${widget.date}",
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Contact number",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${widget.contact}",
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Row(children: [
                                    snapshot.data!['status'] == 0
                                        ? Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          SizedBox(width: 30,),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return Mechaccpt(id:'', name: '', place: '', service: '', date: '', contact: '');
                                                    },
                                                  ));
                                            },
                                            child: Center(
                                              child: Container(
                                                height: 40,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10),
                                                  color: Colors.green,
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        accept();


                                                      },
                                                      child: Text(
                                                        "Accept",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                            Colors.white),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return Text(
                                                          'd'); //Mechstatus_reject();
                                                    },
                                                  ));
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10),
                                                color: Colors.redAccent,
                                              ),
                                              child: Center(
                                                  child: Text(
                                                    "Reject",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  )),
                                            ),
                                          )
                                        ])
                                        : snapshot.data!['status'] == 1
                                        ? Container(
                                                                            height: 40,
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.green,
                                                                            ),
                                                                            child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              accept();
                                            },
                                            child: Text(
                                              "Accept",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          )),
                                                                          )
                                        : snapshot.data!['status'] == 2
                                        ? Container(


                                      height: 40,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            10),
                                        color: Colors.redAccent,
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Reject",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          )),
                                    )
                                        : Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                                      child: Center(child: Text("Reject")),
                                    )
                                  ]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              Positioned(
                top: 80,
                left: 135,
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
        ));
  }

  accept() async {
    await FirebaseFirestore.instance
        .collection('Userreq')
        .doc(widget.id)
        .update({'status': 1});
  }

  reject() async {
    await FirebaseFirestore.instance
        .collection('Userreq')
        .doc(widget.id)
        .update({'status': 2});
  }
}