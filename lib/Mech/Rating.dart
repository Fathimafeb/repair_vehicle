import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mech_rating extends StatefulWidget {
  const Mech_rating({super.key});

  @override
  State<Mech_rating> createState() => _Mech_ratingState();
}

class _Mech_ratingState extends State<Mech_rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 192, 210, 224),
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text("Rating")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Text(
                  "The rating given to you",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 192, 210, 224)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image.asset("assets/Ellipse 11.png"),
                          ),
                          Text(
                            "Name",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 20),
                      child: Column(
                        children: [
                          Text(
                            "A/c service",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Date",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Time",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Place",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rating"),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.all(1),
                          itemSize: 13,
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
                        Text("4/5")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
