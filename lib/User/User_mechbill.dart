import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:repair_vehicle/User/user_payment.dart';
import 'package:repair_vehicle/User/user_rating.dart';

class User_mechbill extends StatefulWidget {
  const User_mechbill({super.key, required name, required String id});

  @override
  State<User_mechbill> createState() => _User_mechbillState();
}

class _User_mechbillState extends State<User_mechbill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(255, 192, 210, 224),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text("Mechanic Bill"),
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


                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.all(2),
                      itemSize: 20,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (value) {
                        print(value);
                      },
                    ),
                    InkWell(onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return User_rating();
                      },));
                    },
                        child: Icon(CupertinoIcons.pen))
                  ],
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:100),
              child: Text("Amount        ",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,

              ),),
            ),
            Center(
              child: Container(
                width: 219,
                height: 43,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(child: Text(" ₹2000/-",style: TextStyle(fontSize: 25),)),
              ),
            ),

            InkWell(onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return User_payment();
              },));
            },
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 2, 74, 133)),
                child: Center(
                  child: Text(
                    "Payment",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
