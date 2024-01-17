import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdminUserSreen extends StatefulWidget {
  const AdminUserSreen({super.key, this.userid});
final userid;

  @override
  State<AdminUserSreen> createState() => _AdminUserSreenState();
}

class _AdminUserSreenState extends State<AdminUserSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child:  StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("userSignup")
                  .doc(widget.userid)
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

                return  Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: ShapeDecoration(
                      color:  Color(0xFFE8F1FF),
                      shape: OvalBorder(),

                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Assets/Rectangle 13.png")
                        ),
                      ),
                    )

                  ),
                  Text(snapshot.data!['Username'],style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                  Text(snapshot.data!['Location'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
                              controller: TextEditingController(text: snapshot.data!['Username']),
                              decoration: InputDecoration(
                                  border: InputBorder.none, ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:20,
                        ),
                        Text(
                          "Phone number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
                              decoration: InputDecoration(
                                  border: InputBorder.none, labelText: '0000000000'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email assress",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
                              decoration: InputDecoration(
                                  border: InputBorder.none, labelText: 'Example@email.com'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue),
                        child: Center(child: Text("Accept",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.redAccent),
                        child: Center(child: Text("reject",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                      )
                    ],
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
