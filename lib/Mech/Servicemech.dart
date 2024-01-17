import 'package:flutter/material.dart';

class Servicemech extends StatefulWidget {
  const Servicemech({super.key});

  @override
  State<Servicemech> createState() => _ServicemechState();
}

class _ServicemechState extends State<Servicemech> {
  showAlertDialogue(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
        title: Text("Add service",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
        content:Column(mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height:20),
          Container(
            height: 60,
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5),
                ]),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, ),
              ),
            ),
          ),
          SizedBox(height: 100,),
          Container(height:50,width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue[900] ),
            child: Center(child: Text("Add",style: TextStyle(fontSize: 18,color: Colors.white),)),
          )
        ],
      ) ,backgroundColor:Color.fromARGB(255, 192, 210, 224) ,);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(
        shape: CircleBorder(
          side: BorderSide.none,


        ),

        foregroundColor:Colors.black,
        backgroundColor:Colors.white,
        label:Icon(Icons.add,size:40 ), onPressed: () {
          showAlertDialogue(context);

      } ,
      ),
      appBar: AppBar(toolbarHeight: 80,
          backgroundColor:  Color.fromARGB(255, 192, 210, 224),
          leading:Icon(Icons.arrow_back_ios),
        title: Center(child: Text("Service")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color.fromARGB(255, 192, 210, 224) ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("    Tyre puncture service",style: TextStyle(fontSize: 18),),
                   Icon(Icons.delete,size: 30,)
                 ],
               ),
                Divider(thickness: 1,color: Colors.black,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("      Engine service",style: TextStyle(fontSize: 18),),
                    Icon(Icons.delete,size: 30,)
                  ],
                ),
                Divider(thickness: 1,color: Colors.black,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("       A/c sevice",style: TextStyle(fontSize: 18),),
                    Icon(Icons.delete,size: 30,)
                  ],
                ),
                Divider(thickness: 1,color: Colors.black,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("      Electric service",style: TextStyle(fontSize: 18),),
                    Icon(Icons.delete,size: 30,)
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
