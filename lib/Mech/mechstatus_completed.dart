import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/mech_home.dart';
import 'package:repair_vehicle/Mech/mechstatus_reject.dart';

class Mech_status extends StatefulWidget {
  String? id;
  String? name;
  String? place;
  String? service;
  var status;
   Mech_status({super.key,
     required this.id,
  required this.name,
    required this.place,
    required this.service,
    required this.status,
  });

  get username => null;

  @override
  State<Mech_status> createState() => _Mech_statusState();
}

class _Mech_statusState extends State<Mech_status> {
  String groupValue="Completed";
  final payment =TextEditingController();
  bool navigateTopage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset("Assets/Ellipse 11.png"),
                        ),
                        Text("${widget.name}",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${widget.service}"),
                     // Text("Date"),
                     // Text("Time",style: TextStyle(fontSize: 20),),
                      Text("${widget.place}",style: TextStyle(fontSize: 20),)
                    ],
                  ),

                ],
              ),
            ),
            Text("Add status",style: TextStyle(fontSize: 25),),
            Row(
              children: [
               Radio(value: "Completed", groupValue: groupValue, onChanged: (value){
                 setState(() {

                   groupValue=value!;
                 });



               }),
                const Text("Completed",),
                SizedBox(width: 20,),
                Radio(value: "Not Completed", groupValue: groupValue, onChanged: (value){
                  setState(() {
                    navigateTopage=true;
                    groupValue=value!;
                  });
                  if(navigateTopage){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context) => Mechstatus_reject(
                      id:widget.id,
                      name: widget.name,
                      place: widget.place,
                      service: widget.service,
                    ),




                    ),);
                  }

                }),
                const Text("Not Completed")

          ],
        ),
            Text("Amount",style: TextStyle(fontSize: 25),),
            Center(
              child: Container(
                width: 219,
                height: 43,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(child:TextFormField(controller: payment,)),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Payment();
                  Update();


                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(color: Colors.blue[800],borderRadius: BorderRadius.circular(15)),
                  child:Text('Submit'),
                ),
              ),
            )
        ]
      ),
      )
    );
  }
  Future<void>Payment()async{
    await FirebaseFirestore.instance.collection('payment').add({
      'payment':payment.text,
      'name':widget.name,
      'id':widget.id,
      'service':widget.service

    });
  }
  Future<void>Update()async{
    await FirebaseFirestore.instance.collection('Userreq')
        .doc(widget.id).update({"status":3});
  }
}
