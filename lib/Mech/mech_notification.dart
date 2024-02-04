import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFE8F1FF),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text("Notification"),

      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Notification").snapshots(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError){
            return Text("Error${snapshot.hasError}");
          }

          if(snapshot.data!.docs.isEmpty){
            return Center(child: Text('No Notification',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 24,color: Colors.grey),));
          }
          final user =snapshot.data?.docs??[];
          return ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 2)],color: Colors.white),
                child: ListTile(
                  leading: Text(user[index]['Matter']),
                  trailing: Text(user[index]['Content']),
                )
              ),
            );
          },
          itemCount: user.length,
          );
        }
      )
    );
  }
}
