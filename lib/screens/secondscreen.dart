import 'package:flutter/material.dart';
import 'package:sevenlab/main.dart';

class Mysecondsecreen extends StatefulWidget {
  const Mysecondsecreen({super.key});

  @override
  State<Mysecondsecreen> createState() => _MysecondsecreenState();
}

class _MysecondsecreenState extends State<Mysecondsecreen> {
  List myitems = ["10-15", "16-20", "21-25", "26-30"];
  String selcteditem = "10-15";
  String mygroupValueOne = "";
  bool myCheckboxListTileOne = false;
  bool myCheckboxListTiletwo = false;
  bool myCheckboxListTilethree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "Please enter your information",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Divider(
              height: 40,
            ),
            Center(
              child: Container(
                child: Text(
                  "How old are you",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Divider(
              height: 25,
            ),
            Container(
              color: Colors.cyan,
              alignment: Alignment.center,
              width: double.infinity,
              child: DropdownButton(
                value: selcteditem,
                items: myitems
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selcteditem = val.toString();
                  });
                },
              ),
            ),
            Divider(
              height: 25,
            ),
            Center(
              child: Container(
                child: Text(
                  "Select your business",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            Divider(
              height: 12,
            ),
            RadioListTile(
              title: Text("Business"),
              value: "Business",
              groupValue: mygroupValueOne,
              onChanged: (val) {
                setState(() {
                  mygroupValueOne = val.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("electronic trade"),
              value: "electronic trade",
              groupValue: mygroupValueOne,
              onChanged: (val) {
                setState(() {
                  mygroupValueOne = val.toString();
                });
              },
            ),
            Divider(
              height: 40,
            ),
            Center(
              child: Container(
                child: Text(
                  "Select the languages you speak",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            Divider(
              height: 15,
            ),
            CheckboxListTile(
              secondary: Icon(Icons.home),
              title: Text("Einglish"),
              value: myCheckboxListTileOne,
              onChanged: (val) {
                setState(() {
                  myCheckboxListTileOne = val!;
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(Icons.home),
              title: Text("German"),
              value: myCheckboxListTiletwo,
              onChanged: (val) {
                setState(() {
                  myCheckboxListTiletwo = val!;
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(Icons.home),
              title: Text("French"),
              value: myCheckboxListTilethree,
              onChanged: (val) {
                setState(() {
                  myCheckboxListTilethree = val!;
                });
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Mywidgetone("back", () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ));
              }, Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}

class Mywidgetone extends StatelessWidget {
  String? mytextwidget;

  Mywidgetone(this.mytextwidget, this.myFunction, this.mycolor);
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
