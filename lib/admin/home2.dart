import 'package:flutter/material.dart';

import 'mechaniclist.dart';
import 'Userlist.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor:  Color.fromARGB(255, 192, 210, 224),
          appBar: AppBar(toolbarHeight: 100, backgroundColor: Color.fromARGB(255, 192, 210, 224),
            title: Image.asset("Assets/Ellipse 1.png",height: 60,width: 60,fit: BoxFit.fill,),
          ),
          body:Padding(
            padding: const EdgeInsets.only(top: 20,left:10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text("User",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          )),
                        ),
                        Tab(
                          child: Text("Mechanic",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          )),
                        ),

                      ],
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.lightBlue
                      ),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                ),


                const Expanded(child:
                TabBarView(children: [Userlist(),
                  Mechaniclist()
                ])
                )
              ],
            ),





          ),
        )
    );

  }
}
