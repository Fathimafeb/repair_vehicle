import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/mech_accpt_reject.dart';
class Requestlist extends StatefulWidget {
  const Requestlist({super.key});

  @override
  State<Requestlist> createState() => _RequestlistState();
}

class _RequestlistState extends State<Requestlist> {
  final datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('Userreq').get(),
          builder: (context, snapshot) {
            final userdata = snapshot.data?.docs ?? [];
            return ListView.builder(
                itemCount: userdata.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mechaccpt(
                                id: userdata[index].id,
                                name: userdata[index]['name'],
                                service: userdata[index]['service'],
                                place: userdata[index]['place'],
                                date: datetime,
                                contact: userdata[index]['contact']),
                          ));
                    },


                      child:
                    Padding(
                    padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                                          children: [
                                            Container(
                          height: 150,
                           width: double.infinity,
                              decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Color.fromARGB(255, 192, 210, 224)),
                               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Padding(
                                    padding: const EdgeInsets.only(top: 30,left:5),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 60,
                                         width: 60,
                                         child: Image.asset("Assets/Ellipse 11.png"),
                                         ),
                                         Text(
                                          "${userdata[index]['name']}",
                                          style: TextStyle(fontSize: 20),
                                        )
                                       ],
                                     ),
                                  ),
                                  Padding(
                                     padding: const EdgeInsets.only(left:5, top: 20),
                                     child: Column(
                                       children: [
                                         Text(
                                           "${userdata[index]['service']}",
                                        style: TextStyle(fontSize: 20),
                                          ),
                                       Text(
                                          "${userdata[index]['contact']}",
                                           style: TextStyle(fontSize: 20),
                                         ),
                                         Text(
                                           "",
                                           style: TextStyle(fontSize: 20),
                                        ),
                                         Text(
                                         "${userdata[index]['place']}",
                                         style: TextStyle(fontSize: 20),
                                         )
                                          ],
                                  ),
                                )
                               ],
                             ),
                             ),

                           ],
                         ),
                      ),
                    ),

                  );
                });
          }),
    );
  }
}