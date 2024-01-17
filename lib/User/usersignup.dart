

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repair_vehicle/User/user_mech_request_list.dart';

class Usersignup extends StatefulWidget {
  const Usersignup({super.key});

  @override
  State<Usersignup> createState() => _UsersignupState();
}

class _UsersignupState extends State<Usersignup> {
  var Username=TextEditingController();
  var Phone=TextEditingController();
  var Email=TextEditingController();
  var Password=TextEditingController();


  String imageUrl='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 210, 224),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 192, 210, 224),
          leading: Icon(Icons.arrow_back_ios)),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(

              children: [
                Container(
                  height: 130,
                  width: 130,
                  child: Image.asset('Assets/tow 1 (1).png', fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 30),
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

                      Text(
                        "Enter Phonenumber",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2
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
                            controller: Phone,
                            decoration: InputDecoration(
                                border: InputBorder.none, labelText: 'Enter password'),
                          ),
                        ),

                      ),
                      Text(
                        "Enter Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 2
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
                            controller: Email,
                            decoration: InputDecoration(
                                border: InputBorder.none, labelText: 'Email'),
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
                                border: InputBorder.none, labelText: 'password'),
                          ),
                        ),
                      ),
                IconButton(onPressed: () async {
                  ImagePicker imagepicker=ImagePicker();
                  XFile? file= await imagepicker.pickImage(source: ImageSource.camera);
                  print('${file?.path}');

                  if(file==null)return;
                  String uniqueFileName=DateTime.now().microsecondsSinceEpoch.toString();

                  Reference referenceRoot=FirebaseStorage.instance.ref();
                  Reference referenceDirImages=referenceRoot.child('images');

                  Reference referenceImageToUpload=referenceDirImages.child(uniqueFileName);

                  try{
                    await referenceImageToUpload.putFile(File(file!.path));

                    imageUrl=await referenceImageToUpload.getDownloadURL();
                  }catch(error){}


                }, icon:Icon(Icons.camera_enhance)),


                SizedBox(height: 50,),





              ],
            ),

          ),
                InkWell(onTap:() {
                 signUp();
                },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 2, 74, 133)),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),

              ]
        ),
      ),
    )
    ),
    );
  }
  signUp() async {
    await FirebaseFirestore.instance.collection("userSignup").add({
      'Username': Username.text,
      'Phone': Phone.text,
      'Email': Email.text,

      'Password': Password.text,
      'status':0
    });
    Username.clear();
    Phone.clear();
    Email.clear();

    Password.clear();
  }
}
