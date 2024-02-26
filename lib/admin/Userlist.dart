import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'admin_user.dart';


class Userlist extends StatefulWidget {
  const Userlist({super.key});

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("userSignup").snapshots(),
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
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AdminUserSreen(userid:user[index].id);
                      },));
                    },
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Container(height: 80,width: 100,
                          child: Image.asset("Assets/Rectangle 13.png",)),
                      title:Text( user[index]['Username']),
                      subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [

                        Text ( user[index]['Phone']),
                        Text ( user[index]['Email'],)
                        ],
                      ),
                    ),
                  ),
                );
              }
          );
        }
      ),
    );

  }
}
