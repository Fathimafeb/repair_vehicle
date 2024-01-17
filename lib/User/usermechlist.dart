import 'package:flutter/material.dart';
import 'package:repair_vehicle/User/user_mech_details.dart';


class Usermechlist extends StatefulWidget {
  const Usermechlist({super.key});

  @override
  State<Usermechlist> createState() => _UsermechlistState();
}

class _UsermechlistState extends State<Usermechlist> {
  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return User_mechdeatails();
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
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2+year experience",style: TextStyle(fontSize: 18),),
                  Text("Fuel leaking",style: TextStyle(fontSize: 18),),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                    child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
                  )
                 ]
              ),

            ],
          ),
        ),
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child:  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1+year experience",style: TextStyle(fontSize: 18),),
                  Text("Battery check",style: TextStyle(fontSize: 18),),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Center(child: Text("Unavailable",style: TextStyle(color: Colors.white),)),
                  )


                ],
              ),

            ],
          ),
        ),
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child:  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
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
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text("1year experience",style: TextStyle(fontSize: 18),),
                  Text("Brake pad replacement",style: TextStyle(fontSize: 18),),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Center(child: Text("Unavailable",style: TextStyle(color: Colors.white),)),
                  )


                ],
              ),

            ],
          ),
        ),
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 192, 210, 224)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1year experience",style: TextStyle(fontSize: 18),),
                    Text("Tyre changing and repair",style: TextStyle(fontSize: 18),),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                      child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
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
