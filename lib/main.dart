import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to flutter'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    'Sign up with Flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.paste_sharp),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 8,
                  obscureText: true,
                ),
                FlatButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
