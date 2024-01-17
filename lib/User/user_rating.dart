import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class User_rating extends StatefulWidget {
  const User_rating({super.key});

  @override
  State<User_rating> createState() => _User_ratingState();
}

class _User_ratingState extends State<User_rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(255, 192, 210, 224),
        leading: Icon(Icons.arrow_back_ios),
      centerTitle: true,
        title: Text("Your rating"),
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

              ],
            ),
                Padding(
                  padding: const EdgeInsets.only(right:100),
                  child: Text("Add rating",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,

                  ),),
                ),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.all(2),
                  itemSize: 40,
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
                Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 2, 74, 133)),
                  child: Center(
                    child: Text(
                      "Submit",
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
