import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/mech_accpt_reject.dart';


class Requestlist extends StatefulWidget {
  const Requestlist({super.key});

  @override
  State<Requestlist> createState() => _RequestlistState();
}

class _RequestlistState extends State<Requestlist> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Mechaccpt();
                      },));
                    },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset("Assets/Ellipse 11.png"),
                      ),
                    ),
                    Text("Name",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 20),
                child: Column(
                  children: [
                    Text("Fuel leaking",style: TextStyle(fontSize: 20),),
                    Text("Date",style: TextStyle(fontSize: 20),),
                    Text("Time",style: TextStyle(fontSize: 20),),
                    Text("Place",style: TextStyle(fontSize: 20),)
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child:  Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
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
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 20),
                child: Column(
                  children: [
                    Text("Engine service",style: TextStyle(fontSize: 20),),
                    Text("Date",style: TextStyle(fontSize: 20),),
                    Text("Time",style: TextStyle(fontSize: 20),),
                    Text("Place",style: TextStyle(fontSize: 20),)
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child:  Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
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
              Padding(
                padding: const EdgeInsets.only(left: 60,top: 20),
                child: Column(
                  children: [
                    Text("A/c service",style: TextStyle(fontSize: 20),),
                    Text("Date",style: TextStyle(fontSize: 20),),
                    Text("Time",style: TextStyle(fontSize: 20),),
                    Text("Place",style: TextStyle(fontSize: 20),)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
