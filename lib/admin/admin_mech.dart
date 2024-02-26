import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class AdminMechScreen extends StatefulWidget {
  const AdminMechScreen({super.key, required this.mecid});

  final mecid;

  @override
  State<AdminMechScreen> createState() => _AdminMechScreenState();
}

class _AdminMechScreenState extends State<AdminMechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("mechSignup")
                .doc(widget.mecid)
                .snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                    snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error:${snapshot.error}'),
                );
              }

              return Column(
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFE8F1FF),
                        shape: OvalBorder(),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/Rectangle 13.png")),
                        ),
                      )),
                  Text(
                    snapshot.data?["Username"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    " Location",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mech Username",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              controller: TextEditingController(
                                  text: snapshot.data?['Username']),
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Phone number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: TextEditingController(
                                  text: snapshot.data?['Phone']),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "email address",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: TextEditingController(
                                  text: snapshot.data?['Email']),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Work experience",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: TextEditingController(
                                  text: snapshot.data?['Experience']),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Work shop name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: TextEditingController(
                                  text: snapshot.data?['Shopname']),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // labelText: snapshot.data?['Shopname']
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Your location",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE8F1FF),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: TextEditingController(
                                  text: 'qwertyu'),
                              decoration: InputDecoration(
                                border: InputBorder.none,

                                // labelText: snapshot
                                //     .data?['Location']
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  snapshot.data!['status'] == 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                               setState(() {
                                 accept();
                               });
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                              setState(() {
                                reject();
                              });
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.redAccent),
                                child: Center(
                                    child: Text(
                                  "reject",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        )
                      : snapshot.data!['status'] == 1
                          ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                )),
                              ),
                          )
                          : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.redAccent),
                                child: Center(
                                    child: Text(
                                  "reject",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                )),
                              ),
                          ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  accept() async {
    await FirebaseFirestore.instance
        .collection('mechSignup')
        .doc(widget.mecid)
        .update({'status': 1});
  }

  reject() async {
    await FirebaseFirestore.instance
        .collection('mechSignup')
        .doc(widget.mecid)
        .update({'status': 2});
  }
}
