import 'package:flutter/material.dart';

class Acceptedlists extends StatefulWidget {
  const Acceptedlists({super.key});

  @override
  State<Acceptedlists> createState() => _AcceptedlistsState();
}

class _AcceptedlistsState extends State<Acceptedlists> {
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
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                child: Center(child: Text("payment pending",style: TextStyle(color: Colors.white),)),
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
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green[800]),
                child: Center(child: Text("payment pending",style: TextStyle(color: Colors.white),)),
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
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("A/c service",style: TextStyle(fontSize: 20),),
                  Text("Date",style: TextStyle(fontSize: 20),),
                  Text("Time",style: TextStyle(fontSize: 20),),
                  Text("Place",style: TextStyle(fontSize: 20),)
                ],
              ),

            ],
          ),
        )
      ],
    );
  }
}
