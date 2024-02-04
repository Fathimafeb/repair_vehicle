import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Servicemech extends StatefulWidget {
  const Servicemech({super.key});

  @override
  State<Servicemech> createState() => _ServicemechState();
}
class _ServicemechState extends State<Servicemech> {


  showAlertDialogue(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
        title: Text("Add service",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
        content:Column(mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height:20),
          Container(
            height: 60,
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5),
                ]),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                controller: service,
                decoration: InputDecoration(
                    border: InputBorder.none, ),
              ),
            ),
          ),
          SizedBox(height: 100,),
          InkWell(
            onTap: () {
              Add();
            },
            child: Container(height:50,width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue[900] ),
              child: Center(child: Text("Add",style: TextStyle(fontSize: 18,color: Colors.white),)),
            ),
          )
        ],
      ) ,backgroundColor:Color.fromARGB(255, 192, 210, 224) ,);
    });
  }
  var service= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(
        shape: CircleBorder(
          side: BorderSide.none,


        ),

        foregroundColor:Colors.black,
        backgroundColor:Colors.white,
        label:Icon(Icons.add,size:40 ), onPressed: () {
          showAlertDialogue(context);

      } ,
      ),
      appBar: AppBar(toolbarHeight: 80,
          backgroundColor:  Color.fromARGB(255, 192, 210, 224),
          leading:Icon(Icons.arrow_back_ios),
        title: Center(child: Text("Service")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 300,

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("Services").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
              if (
              snapshot.connectionState == ConnectionState.waiting
              ) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error:${snapshot.hasError}'),
                );
              }
              final service = snapshot.data?.docs??[];
              return ListView.separated(
                // shrinkWrap: true,

                itemBuilder: ( context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10),
                      child: ListTile(
                        tileColor: Colors.white,

                        title: Text(service[index]["service"]),
                        trailing: Icon(Icons.delete, size: 30),
                      ),
                    );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Divider(color: Colors.black,),
                  );
                },
                itemCount: service.length,
              );
            }

    )
    )
          ),
        );






  }
  Future<void> Add() async {

    print("hello");
    await FirebaseFirestore.instance.collection("Services").add({
      'service': service.text,
    });
  }
}
