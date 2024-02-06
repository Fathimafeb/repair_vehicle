import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:repair_vehicle/Mech/mech_accpt_reject.dart';
import 'package:repair_vehicle/Mech/mech_home.dart';
import 'package:repair_vehicle/Mech/mechsignup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mechlogin extends StatefulWidget {
  const Mechlogin({super.key});

  @override
  State<Mechlogin> createState() => _MechloginState();
}

class _MechloginState extends State<Mechlogin> {
  var Username= TextEditingController();
  var Password=TextEditingController();
  final formkey= GlobalKey<FormState>();
  String id= '';
  String name='';
  String email='';
  String phone='';
  String pass='';

  
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(255, 192, 210, 224),
      appBar: AppBar(leading: InkWell(onTap: () {
        Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back_ios)),backgroundColor:Color.fromARGB(255, 192, 210, 224) ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 40,),
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
            SizedBox(height:30),
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
            SizedBox(height: 40,),



            InkWell(
              onTap: () {
                Mechlogin();
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
                      return Mech_Signup();
                    },));
                  },
                  child: Text(
                    'Sign up.',
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
    );
  }
  void Mechlogin()async{
    
    final user= await FirebaseFirestore.instance.
    collection('mechSignup')
        .where('Username',isEqualTo: Username.text)
        .where('Password',isEqualTo: Password.text)
        .where('status',isEqualTo:1 )
        .get();
    
    if(user.docs.isNotEmpty){
      id= user.docs[0].id;
      name= user.docs[0]['Username'];
      email= user.docs[0]['Email'];
      phone= user.docs[0]['Phone'];
      pass= user.docs[0]['Password'];

      SharedPreferences data= await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString('name', name);
      data.setString('email', email);
      data.setString('phone', phone);

      
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Mech_home();
      },));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:
      Text('Username and password error',style: TextStyle(color: Colors.red),),
      ));
    }
    
  }
}
