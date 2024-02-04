import 'package:flutter/material.dart';
import 'package:repair_vehicle/User/Userprofile.dart';
import 'package:repair_vehicle/User/user_reqlist.dart';
import 'package:repair_vehicle/User/usermechlist.dart';

import '../admin/notification.dart';

class Usermechreq extends StatefulWidget {
  const Usermechreq({super.key});

  @override
  State<Usermechreq> createState() => _UsermechreqState();
}

class _UsermechreqState extends State<Usermechreq> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(backgroundColor:  Color.fromARGB(255, 192, 210, 224),toolbarHeight:80,
          leading:  InkWell(onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Userprofile();
            },));
          },
            child: Container(
              width: 80,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFE8F1FF),
                shape: OvalBorder(),

              ),
              child: Container(
                width:100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Assets/Ellipse 1.png",),fit: BoxFit.fill
                  ),
                ),
              )

                  ),
          ),
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_rounded,color: Colors.yellow,size:40,))
         ],
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Expanded(child:
              TabBarView(children: [Usermechlist(),
                User_Requestlist(),

              ])
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text("Mechanic",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                      ),
                      Tab(
                        child: Text("Request",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        )),
                      ),

                    ],
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue[900]
                    ),
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
