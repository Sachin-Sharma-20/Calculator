import 'package:calculator_app/background.dart';
import 'package:calculator_app/home_page.dart';
import 'package:calculator_app/roundbutton.dart';
import 'package:flutter/material.dart';

class Ui extends StatefulWidget {
  @override
  _UiState createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Background(
      child: RoundedButton(
        text: "Continunue to Calculator",
         color: Colors.blue,
         press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
         }
      )
    ));

      
    
  }
}
