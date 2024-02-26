import 'package:flutter/material.dart';
import 'package:repair_vehicle/admin/home2.dart';
import 'package:repair_vehicle/admin/homepage.dart';
import 'package:repair_vehicle/admin/page2.dart';


class Adminlogin extends StatefulWidget{
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  @override
  final username =TextEditingController();

  final password=TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 210, 224),
      appBar: AppBar(leading: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Page2();
          },));
        },
          child: Icon(Icons.arrow_back_ios)),backgroundColor:Color.fromARGB(255, 192, 210, 224) ,),
      body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
            Container(
                height: 150,
                width: 150,
                child: Image.asset("Assets/tow 1 (1).png")),
            Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Username",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
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
                        controller: username,
                        validator: (value) {
                        },
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
                      fontWeight: FontWeight.bold,
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
                        controller: password,
                        validator:(value) {

                        },
                        decoration: InputDecoration(
                            border: InputBorder.none, labelText: 'Username'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Center(
              child: Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 2, 74, 133)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      adminlogin(context);
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 20),

                    ),
                  ),
                ),
              ),
            ),
                    ],
                  ),
          )),
    );
  }
  void adminlogin(BuildContext context){
    if(username.text=='admin'&& password.text=='admin123'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password'))
      );
    }
  }
}
