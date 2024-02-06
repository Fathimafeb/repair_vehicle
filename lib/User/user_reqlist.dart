import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'User_mechbill.dart';
import '../Mech/mech_failed.dart';

class User_Requestlist extends StatefulWidget {
  const User_Requestlist({super.key});

  @override
  State<User_Requestlist> createState() => _User_RequestlistState();
}

class _User_RequestlistState extends State<User_Requestlist> {
  @override
  Widget build(BuildContext context) {
    // return
    return StreamBuilder(
        stream:FirebaseFirestore.instance.collection('Userreq').where('status',whereIn: [3,4,5]).snapshots(),
         builder: (context, snapshot) {
           final user= snapshot.data?.docs??[];
           return ListView.builder(
             itemCount: user.length,
             itemBuilder:(context, index) {
             return Container(
               height: 130,
               width: double.infinity,
               decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color: Color.fromARGB(255, 192, 210, 224)),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('${user[index]['name']}'),
                       Text(''),
                       Text('${user[index]['place']}'),
                       Text('${user[index]['service']}')
                     ],
                   ),
                  Row(
                    children: [
                      user[index]['status'] == 3
                      ?Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:() {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => User_mechbill(id: user[index].id, name: user[index]['name'],exp: user[index]['exp'],),));
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                              child: Center(child: Text(
                                'pay',style:TextStyle(
                                  color: Colors.white),
                              ),
                              ),
                            ),
                          )
                        ],
                      ):user[index]['status'] ==4
                      ?Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                        child: Center(
                        child: Text("Approved",style:TextStyle(color: Colors.white),),

                        ),
                      )
                          :user[index]['status'] == 5
                      ? InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Mech_failed(id: user[index].id),));
                        },
                        child: Container(
                          height: 30,
                          width: 100,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                              const Color.fromARGB(
                                  255, 175, 120, 76)),
                          child: Center(
             child: Text(
             "Failed",
             style: TextStyle(
             color: Colors.white),
                        ),
                      )
             )

             )
                         :Text('error')
             ]
                      )



                    ]
                  )




               );

           },);
         },);
  }
}




