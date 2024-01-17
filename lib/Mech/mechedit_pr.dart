import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mechedit extends StatefulWidget {
  const Mechedit({super.key});

  @override
  State<Mechedit> createState() => _MecheditState();
}

class _MecheditState extends State<Mechedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading:  Icon(Icons.arrow_back_ios),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.note_alt_outlined),
        )],
      
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: 150,
                height: 150,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("Assets/Ellipse 4.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(height:20),


              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Name'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),



                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'User name'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),



                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Phone number'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),




                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: ' Email'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),



                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Experience'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),





                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Location'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),


                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Shop name'),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50,),

              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue),
                child: Center(child: Text("Done",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
