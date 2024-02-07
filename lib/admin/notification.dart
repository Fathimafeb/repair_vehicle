import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Admin_add.dart';




class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(

        shape: CircleBorder(
            side: BorderSide.none,
        ),

        foregroundColor:Colors.blue,
        backgroundColor:Colors.white,
        label:InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AdminAdd();
          },));
        },
            child: Icon(Icons.add,size:40 )), onPressed: () {} ,
      ),
      backgroundColor: Color.fromARGB(255, 192, 210, 224,),
      appBar: AppBar(toolbarHeight:70, backgroundColor: Color.fromARGB(255, 192, 210, 224),
        title: Image.asset("Assets/Ellipse 1.png",height: 60,width: 60,fit: BoxFit.fill,),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
        child: FutureBuilder(future: FirebaseFirestore.instance.collection("Notification").get(),builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          if (snapshot.hasError) return Text('error');
          final userdata=snapshot.data?.docs??[];


          return ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    tileColor: Colors.white,

                    title:
                    Text("${userdata[index]['Matter']}"),


                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${userdata[index]['Content']}")

                      ],
                    ),
                  ),
                );
              }
          );
        } ),
      ),




    );
  }
}
