// import 'package:flutter/material.dart';
//
// class signup extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return( MaterialApp(
//         theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
//         title: 'New app',
//     body: Container(
//       child: Column(
//         children: [
//           Text("RentWise"),
//           Text("Create an account"),
//           Text("Signup your account to start using smartgirlsHQ"),
//
//         ],
//       )
//     ),
//     ),)
//     );
//   }
// }

import 'package:flutter/material.dart';

class signup extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
    MaterialApp(
      title: 'SignUp page',
      home: Scaffold(
        body: Container(
      child: ListView(
        children: [
          Row(
            children: [
              Text("RentWise", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w800, fontSize: 22),),
              Container(
                // color: Colors.grey,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 18.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            ],
          ),
          Text("Create an account", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500, fontSize: 20),),
          Text("Signup your account to start using \n smartgirlsHQ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14),),
          Divider(
            // height: 20,
            thickness: 1,
            // indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Text("Name", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // labelText: 'Full Name',
              hintText: 'Full Name',
            ),
          ),
          Text("Email Address", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // labelText: 'Full Name',
              hintText: 'abc@gmail.com',
            ),
          ),
          Text("Phone Number", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // labelText: 'Full Name',
              hintText: '+1- (857) 233-5454',
            ),
          ),
          Text("Password"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // labelText: 'Full Name',
              hintText: '*************',
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.deepPurple,
                  minimumSize: Size(296, 55)
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()));
              },
            ),),
          Container(
            margin: const EdgeInsets.fromLTRB(94, 17, 94, 52),
            child: const Text(
              "I already have an Account",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey, ),
            ),
          ),
        ],
      )
    ),
      ),
    )
    );
  }
}