import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class User_mechdeatails extends StatefulWidget {
  const User_mechdeatails({super.key});

  @override
  State<User_mechdeatails> createState() => _User_mechdeatailsState();
}

class _User_mechdeatailsState extends State<User_mechdeatails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor:  Color.fromARGB(255, 192, 210, 224),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text("Neede service"),
      ),
      body: Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                    width: 140,
                    height: 140,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE8F1FF),
                      shape: OvalBorder(),

                    ),
                    child: Image.asset("Assets/bussiness-man 2.png")
                ),
                Text(
                  'Name ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2

                  ),
                ),
                Text("Contact number"),
                SizedBox(
                  width: 134,
                  height: 21.28,
                  child: Text(
                    '2+ year experience ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2


                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:50),
              child: Text("Add needed service                    ",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 60),
              child: Container(
                height: 40,
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
                        border: InputBorder.none, labelText: 'Fuel leaking'),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:40,right: 60),
              child: Container(
                height: 40,
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
                        border: InputBorder.none, ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:100),
              child: Text("Place                            ",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: Container(
                height: 60,
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
                      border: InputBorder.none,labelText: "Beach road calicut" ),
                  ),
                ),
              ),
            ),


            Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 2, 74, 133)),
              child: Center(
                child: Text(
                  "Request",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),



          ],
        ),
      ),

    );
  }
}
