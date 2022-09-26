import 'package:flutter/material.dart';
import 'package:rental_app_flutter/pages/signup.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
      title: 'New app',
      home: Scaffold(body: HomePage()),
    ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        Container(
          // height: 250,
          child: Card(
            child: Image.asset(
              './images/home.png',
              fit: BoxFit.fitWidth,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            // margin: const EdgeInsets.all(10),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(37, 20, 37, 10),
          child: const Text(
            "We try our best to make your \n living memorable",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.deepPurple),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(37, 0, 37, 30),
          child: const Text(
            "It is a long established fact that a reader will be distracted by the readable",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey, ),
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
    ));
  }
}
