import 'package:flutter/material.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading:  Icon(Icons.arrow_back_ios),),
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
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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

                    Text(
                      "Username",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 3
                      ),
                    ),
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
                              border: InputBorder.none, labelText: 'Username'),
                        ),
                      ),
                    ),

                    Text(
                      "Phone number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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

                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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
                              border: InputBorder.none, labelText: 'Enter email'),
                        ),
                      ),
                    ),

                    Text(
                      "Work experience",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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
                              border: InputBorder.none, labelText: 'Enter your experience'),
                        ),
                      ),
                    ),


                    Text(
                      "Work shop name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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
                              border: InputBorder.none, labelText: 'Ente your shop name'),
                        ),
                      ),
                    ),

                    Text(
                      "Your location",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                          height: 3
                      ),
                    ),
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
                              border: InputBorder.none, labelText: 'Enter your location'),
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
                child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
