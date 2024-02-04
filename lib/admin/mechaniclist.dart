import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'admin_mech.dart';


class Mechaniclist extends StatefulWidget {
  const Mechaniclist({super.key});

  @override
  State<Mechaniclist> createState() => _MechaniclistState();
}

class _MechaniclistState extends State<Mechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection("mechSignup").snapshots(),

        builder: (context,AsyncSnapshot<QuerySnapshot>snapshot) {
          if(
          snapshot.connectionState==ConnectionState.waiting
          ){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasError){
            return Center(
              child: Text('Error:${snapshot.error}'),
            );
          }
          final user=snapshot.data?.docs??[];
          return ListView.builder(
              //shrinkWrap: true,

              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Container(height: 70,width: 100,
                        child: Image.asset("Assets/Rectangle 13.png",)),
                    title: Text(user[index]["Username"]),
                    subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [

                        Text(user[index]["Password"]),
                        Text(user[index]["Phone"]),
                        Text(user[index]["Email"]),


                      ],
                    ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdminMechScreen(mecid: user[index].id),));
                  },
                  ),
                );

              },
            itemCount: user.length,
          );

        }
      ),
    );

  }
}
