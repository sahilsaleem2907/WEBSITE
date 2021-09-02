import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:website_sept/Navbar/Navbar.dart';
import 'package:website_sept/LandingPage/LandingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahil Saleem Website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: RawScrollbar(
          thumbColor: Colors.green,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Lottie.asset('assets/lottiefile.json'),
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: LandingPage(),
                ),
                SizedBox(height: 10,),
                Text("Sahil Saleem © 2021", style: TextStyle(fontSize: 16.0, color: Colors.green),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
