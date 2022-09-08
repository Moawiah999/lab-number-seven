import 'dart:ui';

import 'package:flutter/material.dart';
import './screens/firstscreen.dart';
import './screens/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("image/images_home.jpg"),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44),
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 14,
                  )),
              width: double.infinity,
              height: 120,
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text(
                  "Welcome to my app",
                  style: TextStyle(fontSize: 22, fontFamily: 'Pacifico'),
                ),
              ),
            ),
            Divider(
              height: 250,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Myfirstscreen();
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: Text(
                "Go select your destination",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Mysecondsecreen();
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: Text(
                "Add your information",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
