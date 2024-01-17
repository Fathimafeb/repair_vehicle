import 'package:flutter/material.dart';

class AdminAdd extends StatefulWidget {
  const AdminAdd({super.key});

  @override
  State<AdminAdd> createState() => _AdminAddState();
}

class _AdminAddState extends State<AdminAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE8F1FF),
      appBar: AppBar(leading:  Icon(Icons.arrow_back_ios),backgroundColor: Color(0xFFE8F1FF)),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Enter Matter',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 3)),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
          
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Color(0xFFE8F1FF), blurRadius:1),
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Matter'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Enter Content',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 3)),
              Container(
                height: 400,
                width: 330,
                decoration: BoxDecoration(
          
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Color(0xFFE8F1FF), blurRadius:1),
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Content...',),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue[800]),
                  child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                ),
              ),
          
            ],
          ),
        ),
      ),


    );
  }
}
