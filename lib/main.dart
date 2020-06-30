import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Magic Ball 8",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          body: Magic(),
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int l =1;
  void changef(){
    setState(() {
      l = Random().nextInt(4) + 1;

    });
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$l.png'),
          onPressed: () {
            changef();

          },
        ),
      ),
    );
  }
}
