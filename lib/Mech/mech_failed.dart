import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mech_failed extends StatefulWidget {
  const Mech_failed({super.key, required String id});

  get id => null;

  @override
  State<Mech_failed> createState() => _Mech_failedState();
}

class _Mech_failedState extends State<Mech_failed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(255, 192, 210, 224),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text("Mechanic Bill"),
      ),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection
                ('Userreq').where({'status'},isEqualTo: 5).snapshots(),
              builder: (context, snapshot) {
                final user = snapshot.data?.docs??[];
                return Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 140,
                            height: 140,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE8F1FF),
                              shape: OvalBorder(),
                
                            ),
                            child: Image.asset("Assets/bussiness-man 2.png")
                        ),
                        Text(
                          '${user[0]['name']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2
                
                          ),
                        ),
                        SizedBox(
                          width: 134,
                          height: 21.28,
                          child: Text(
                            '${user[0]['exp']}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                
                
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                          child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.all(2),
                              itemSize: 20,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                              onRatingUpdate: (value) {
                                print(value);
                              },
                            ),
                            Icon(CupertinoIcons.pen)
                          ],
                        ),
                
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:100),
                      child: Text("Failed reason       ",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height:5
                
                      ),),
                    ),
                   StreamBuilder(
                     stream: FirebaseFirestore.instance.collection('failed')
                         .where(user[0].id,isEqualTo:widget.id ).snapshots(),
                     builder: (context, snapshot) {
                       final user = snapshot.data?.docs??[];
                       return Container(
                         height: 150,
                         width: double.infinity,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black)),
                         child: TextFormField(decoration: InputDecoration( hintText:"${user[0]['service']}",border: OutlineInputBorder(borderSide: BorderSide.none))),
                       );
                     }
                   ),
                    SizedBox(height: 40,),
                
                    Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 2, 74, 133)),
                      child: Center(
                        child: Text(
                          "OK",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                
                
                  ],
                );
              }
            ),
          ),
        ),
      ),

    );
  }
}
