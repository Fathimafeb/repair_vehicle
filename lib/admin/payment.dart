import 'package:cloud_firestore/cloud_firestore.dart';
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
          child: FutureBuilder(
            future: FirebaseFirestore.instance.collection('payment').get(),
            builder: (context, snapshot) {
              final userdata = snapshot.data?.docs ?? [];


            return ListView.builder(
                shrinkWrap: true,
                itemCount: userdata.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      tileColor: Colors.white,
            
                     trailing: Text(''),
                      subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          Text(userdata[index]['name']),
                        //  Text(userdata[index]['service']),
                          Text(userdata[index]['payment'])

                        ],
                      ),
                    ),
                  );
                }

            );
            }
            ),
          ),




    );
  }
}
