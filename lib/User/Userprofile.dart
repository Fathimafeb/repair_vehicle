import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
            
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: Color(0xFFE8F1FF),
                        shape: OvalBorder(),
            
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/Ellipse 1.png",),fit: BoxFit.fill
                          ),
                        ),
                      )
            
                  ),
            
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
            
                    ),
                  ),
            
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enter Username",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 2
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
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
                            "Enter Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 2
                            ),
                          ),
            
                          Container(
                            height: 50,
                            width: double.infinity,
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
                                    border: InputBorder.none, labelText: 'Enter password'),
                              ),
                            ),
            
                          ),
                          Text(
                            "Enter Username",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 2
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
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
            
            
                          SizedBox(height: 50,),
            
            
            
            
            
                        ],
                      ),
                    ),
            
                  ),
                  Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 2, 74, 133)),
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
            
                ]
            ),
          )
      ),
    );
  }
}
