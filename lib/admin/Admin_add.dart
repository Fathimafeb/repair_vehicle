import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/admin/notification.dart';

class AdminAdd extends StatefulWidget {
  const AdminAdd({super.key});

  @override
  State<AdminAdd> createState() => _AdminAddState();
}

class _AdminAddState extends State<AdminAdd> {
  var Matter= TextEditingController();
  var Content=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE8F1FF),
      appBar: AppBar(leading:  InkWell(onTap: () {
        Navigator.pop(context);
             ;
      },
          child: Icon(Icons.arrow_back_ios)),backgroundColor: Color(0xFFE8F1FF)),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Enter Matter',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 3)),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
          
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Color(0xFFE8F1FF), blurRadius:1),
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: Matter,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Matter'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Enter Content',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 3)),
              InkWell(
                onTap: () {

                },
                child: Container(
                  height: 400,
                  width: 330,
                  decoration: BoxDecoration(

                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Color(0xFFE8F1FF), blurRadius:1),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: Content,
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: 'Content...',),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Center(
                child: InkWell(
                  onTap: () {
                     request();
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue[800]),
                    child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),


    );
  }
   Future <void>request() async{

    print("hello");
    await FirebaseFirestore.instance.collection("Notification").add({
      'Matter': Matter.text,
      'Content': Content.text,
    });
  }
}
