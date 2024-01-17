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
        title: Center(child: Text("Notification")),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(children: [
            Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 5),
                  ]),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Admin notification",style: TextStyle(fontSize:15,color: Colors.grey),),
                        Text("10:00 am",style: TextStyle(fontSize:18,color: Colors.black),)
                      ],
                    ),
                  ),
                  
                ],
              )
            ),
          ]),
        ),
      ),
    );
  }
}
