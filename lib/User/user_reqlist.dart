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
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("Name",style: TextStyle(fontSize: 18),),
                    Text("Date",style: TextStyle(fontSize: 18),),
                    Text("Time",style: TextStyle(fontSize: 18),),
                    Text("Fuel leaking",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                      child: Center(child: Text("Approved",style: TextStyle(color: Colors.white),)),
                    )
                  ]
              ),

            ],
          ),
        ),
        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("Name",style: TextStyle(fontSize: 18),),
                    Text("Date",style: TextStyle(fontSize: 18),),
                    Text("Time",style: TextStyle(fontSize: 18),),
                    Text("Fuel leaking",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return User_mechbill();
                      },));
                    },
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                        child: Center(child: Text("Pay",style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ]
              ),

            ],
          ),
        ),
        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("Name",style: TextStyle(fontSize: 18),),
                    Text("Date",style: TextStyle(fontSize: 18),),
                    Text("Heating AC",style: TextStyle(fontSize: 18),),

                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Mech_failed();
                      },));
                    },
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
                        child: Center(child: Text("failed",style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ]
              ),

            ],
          ),
        ),
        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("Name",style: TextStyle(fontSize: 18),),
                    Text("Date",style: TextStyle(fontSize: 18),),

                    Text("Fuel leaking",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
                      child: Center(child: Text("Rejected",style: TextStyle(color: Colors.white),)),
                    )
                  ]
              ),

            ],
          ),
        ),




      ],
    );
  }
}
