import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Mech_Signup extends StatefulWidget {
  const Mech_Signup({super.key});

  @override
  State<Mech_Signup> createState() => _Mech_SignupState();
}

class _Mech_SignupState extends State<Mech_Signup> {
  final Username = TextEditingController();
  final Phone = TextEditingController();
  final Email = TextEditingController();
  final Experience = TextEditingController();
  final Shopname = TextEditingController();
  final Password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 210, 224),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 192, 210, 224),
          leading: Icon(Icons.arrow_back_ios)),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                // Container(
                //   height: 130,
                //   width: 130,
                //   child: Image.asset('Assets/tow 1 (1).png', fit: BoxFit.fill),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
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
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                                border: InputBorder.none,
                                labelText: 'Username'),
                          ),
                        ),
                      ),
                      Text(
                        "Enter Phonenumber",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                            controller: Phone,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter password'),
                          ),
                        ),
                      ),
                      Text(
                        "Enter your Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                            controller: Email,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter Email'),
                          ),
                        ),
                      ),
                      Text(
                        "Enter your experience",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                            controller: Experience,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter your experience'),
                          ),
                        ),
                      ),
                      Text(
                        "Enter your work shop name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                            controller: Shopname,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter your shopname'),
                          ),
                        ),
                      ),
                      Text(
                        "Enter your password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2),
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
                                border: InputBorder.none,
                                labelText: 'Enter your password'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
 SizedBox(height: 30,),
              InkWell(
                  onTap: (){
                    signUp();
                  },
                  child: Container(
                    height: 50,width: 200,
                    child:
                  Center(

                    child: Text("signup",style:
                    TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),),
                  ),
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.circular(10),
                        color: Colors.blue),))
              ],
            ),
          ),
        ),
      ),
    );
  }
   signUp() async {
    await FirebaseFirestore.instance.collection("mechSignup").add({
      'Username': Username.text,
      'Phone': Phone.text,
      'Email': Email.text,
      'Experience': Experience.text,
      'Shopname': Shopname.text,
      'Password': Password.text,
      'status':0
    });
    Username.clear();
     Phone.clear();
     Email.clear();
     Experience.clear();
     Shopname.clear();
     Password.clear();
  }
}
