import 'package:flutter/material.dart';

import 'Admin_add.dart';




class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AdminAdd();
        },));
      },
        child: FloatingActionButton.extended(
          shape: CircleBorder(
              side: BorderSide.none,
          ),
        
          foregroundColor:Colors.blue,
          backgroundColor:Colors.white,
          label:Icon(Icons.add,size:40 ), onPressed: () {} ,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 192, 210, 224,),
      appBar: AppBar(toolbarHeight:70, backgroundColor: Color.fromARGB(255, 192, 210, 224),
        title: Image.asset("Assets/Ellipse 1.png",height: 60,width: 60,fit: BoxFit.fill,),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  tileColor: Colors.white,

                  title:
                      Text("Heading"),



                  subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                     Text('Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying . . . . .')

                    ],
                  ),
                ),
              );
            }
        ),
      ),




    );
  }
}
