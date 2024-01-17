import 'package:flutter/material.dart';

class Mechlogin extends StatefulWidget {
  const Mechlogin({super.key});

  @override
  State<Mechlogin> createState() => _MechloginState();
}

class _MechloginState extends State<Mechlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(255, 192, 210, 224),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 130,
            width: 130,
            child: Image.asset('Assets/tow 1 (1).png', fit: BoxFit.fill),
          ),
          Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,

            ),
          ),
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Username",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
                          border: InputBorder.none, labelText: 'Username'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Enter Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

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
                          border: InputBorder.none, labelText: 'Enter password'),
                    ),
                  ),
                ),

              ],
            ),
          ),



          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 2, 74, 133)),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do you have account ? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color(0xFF2357D9),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              )
            ],
          ),


        ],
      ),
    );
  }
}
