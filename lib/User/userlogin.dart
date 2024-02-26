

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/User/user_mech_request_list.dart';
import 'package:repair_vehicle/User/usermechlist.dart';
import 'package:repair_vehicle/User/usersignup.dart';
import 'package:repair_vehicle/admin/page2.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Userlogin extends StatefulWidget {
  const Userlogin({super.key});

  @override
  State<Userlogin> createState() => _UserloginState();
}

class _UserloginState extends State<Userlogin> {
  var Username =TextEditingController();
  var Password=TextEditingController();
  final formkey =GlobalKey<FormState>();
  String id='';
  String name='';
  String email='';
  String phone='';
  String pass='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 210, 224),
      appBar: AppBar(backgroundColor:Color.fromARGB(255, 192, 210, 224),
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) {
                return Page2();
              },));
            },
              child: Icon(Icons.arrow_back_ios)) ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formkey,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          controller: Username,
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
                          controller: Password,
                          decoration: InputDecoration(
                              border: InputBorder.none, labelText: 'Enter password'),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),



              InkWell(
                onTap: () {
                  userLogin();


                },
                child: Container(
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
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Usersignup();
                      },));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFF2357D9),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
  void userLogin()async{
   
    final user = await FirebaseFirestore.instance.
    collection('userSignup')
        .where('Username',isEqualTo: Username.text)
        .where('Password',isEqualTo: Password.text)
        .where('status',isEqualTo: 1)
        .get();

    if(user.docs.isNotEmpty){
      id = user.docs[0].id;
      name= user.docs[0]['Username'];
      email= user.docs[0]['Email'];
      phone= user.docs[0]['Phone'];
      pass=user.docs[0]['Password'];
      SharedPreferences data= await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString('name', name);
      data.setString('email', email);
      data.setString('phone', phone);


      print('succes');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Usermechreq(),));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Username and password error",style: TextStyle(color: Colors.red),),
      ));
    }
  }
}
