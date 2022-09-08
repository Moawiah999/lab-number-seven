import 'package:flutter/material.dart';
import 'package:sevenlab/main.dart';

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key});

  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  String mygroupValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.orange, Colors.cyanAccent])),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Mywidget("back", () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ));
              }, Colors.amber),
            ),
            Divider(
              height: 130,
            ),
            Container(
              child: Text(
                "Where do you want to go ? ",
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 24, color: Colors.black),
              ),
            ),
            Divider(
              height: 40,
            ),
            RadioListTile(
              activeColor: Colors.greenAccent,
              title: Text(
                "Jordan",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text("           Amman",
                  style: TextStyle(color: Colors.black)),
              secondary: Icon(
                Icons.drive_eta,
                color: Colors.black,
              ),
              value: "Jordan",
              groupValue: mygroupValue,
              onChanged: (val) {
                setState(() {
                  mygroupValue = val.toString();
                });
              },
            ),
            Divider(
              height: 20,
              thickness: 0,
            ),
            RadioListTile(
              activeColor: Colors.amber,
              title: Text(
                "Syria",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text("           Damascus",
                  style: TextStyle(color: Colors.black)),
              secondary: Icon(
                Icons.drive_eta,
                color: Colors.black,
              ),
              value: "Syria",
              groupValue: mygroupValue,
              onChanged: (val) {
                setState(() {
                  mygroupValue = val.toString();
                });
              },
            ),
            Divider(
              height: 20,
            ),
            RadioListTile(
              activeColor: Colors.amber,
              title:
                  Text("Saudi Arabia", style: TextStyle(color: Colors.black)),
              subtitle: Text("           Riyadh",
                  style: TextStyle(color: Colors.black)),
              secondary: Icon(
                Icons.drive_eta,
                color: Colors.black,
              ),
              value: "Saudi Arabia",
              groupValue: mygroupValue,
              onChanged: (val) {
                setState(() {
                  mygroupValue = val.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  String? mytextwidget;

  Mywidget(this.mytextwidget, this.myFunction, this.mycolor);
  Color? mycolor;
  Function() myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          mytextwidget!,
          style: TextStyle(fontSize: 24),
        ),
        color: mycolor,
        width: double.infinity,
      ),
    );
  }
}
