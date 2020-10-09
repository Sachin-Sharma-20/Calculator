import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, res = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $res",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1st"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2nd"),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.only(top: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.grey[400],
                  onPressed: add,
                ),
                MaterialButton(
                  child: Text("-"),
                 color: Colors.grey[400],
                  onPressed: sub,
                )
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("*"),
                   color: Colors.grey[400],
                    onPressed: mul,
                  ),
                  MaterialButton(
                    child: Text("/"),
                   color: Colors.grey[400],
                    onPressed: div,
                  )
                ]),
            Padding(padding: const EdgeInsets.only(top: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    child: Text("Clear"),
                   color: Colors.grey[400],
                    onPressed: clear),
              ],
            )
          ],
        ),
      ),
    );
  }
}
