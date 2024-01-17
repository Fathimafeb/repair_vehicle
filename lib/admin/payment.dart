import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(255, 192, 210, 224,),
      appBar: AppBar(toolbarHeight: 100, backgroundColor: Color.fromARGB(255, 192, 210, 224),
        title: Image.asset("Assets/Ellipse 1.png",height: 60,width: 60,fit: BoxFit.fill,),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    tileColor: Colors.white,

                    title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Name"),
                        Text("10/11/2023"),

                      ],
                    ),
                    subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        Text('₹ 5455/-'),
                        Text('Service'),
                        Text('Mechanic Name')
                      ],
                    ),
                  ),
                );
              }
          ),
        ),



    );
  }
}
