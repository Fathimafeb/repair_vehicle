import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/requestlist.dart';

import 'Acceptedlist.dart';
import 'mech_notification.dart';
import 'mechedit_pr.dart';


class Mechservice extends StatefulWidget {
  const Mechservice({super.key});

  @override
  State<Mechservice> createState() => _MechserviceState();
}

class _MechserviceState extends State<Mechservice> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(length: 2,
        child: Scaffold( backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Mechedit();
                    },));
                  },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("Assets/Ellipse 4.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),

                  InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MechNotification();
                    },));
                  },
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.notification_add_rounded),))
                ],
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text("Requests",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                      ),
                      Tab(
                        child: Text("Accepted",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                      ),

                    ],
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 192, 210, 224)
                    ),
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
              ),
              const Expanded(child:
              TabBarView(children: [Center(child:Requestlist() ),
                Center(child:Acceptedlists() )
              ])
              )






          ],
          ),
        )
            ),
      );
  }
}
