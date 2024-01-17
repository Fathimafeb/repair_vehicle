import 'package:flutter/material.dart';

class Mechstatus_reject extends StatefulWidget {
  const Mechstatus_reject({super.key});

  @override
  State<Mechstatus_reject> createState() => _Mechstatus_rejectState();
}

class _Mechstatus_rejectState extends State<Mechstatus_reject> {
  String groupValue="Completed";
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
                            Text("Name",style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Fuel leaking",style: TextStyle(fontSize: 20),),
                          Text("Date",style: TextStyle(fontSize: 20),),
                          Text("Time",style: TextStyle(fontSize: 20),),
                          Text("Place",style: TextStyle(fontSize: 20),)
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
                    const Text("Completed"),
                    SizedBox(width: 20,),
                    Radio(value: "Not Completed", groupValue: groupValue, onChanged: (value){
                      setState(() {
                        groupValue=value!;
                      });

                    }),
                    const Text("Not Completed")

                  ],
                ),
                Text("Reject reason",style: TextStyle(fontSize: 25),),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    

                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(color: Colors.blue[800],borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text("Submit",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold))),
                  ),
                )
              ]
          ),
        )
    );
  }
}
