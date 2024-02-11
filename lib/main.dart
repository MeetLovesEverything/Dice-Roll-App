import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("DiceApp")),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.black,
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
      ),
      onPressed: () {
        setState(() {
          left = Random().nextInt(6) + 1;
          right = Random().nextInt(6) + 1;
        });
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("Images/dice$left.png"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("Images/dice$right.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              width: 150.0,
              height: 30.0,
              color: Colors.black,
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            Row(
              children: [
                SizedBox(width: 81.0+26,),
                Container(
                  height: 30.0,
                  color: Colors.black,
                  width: 30.0,
                ),
                SizedBox(width: 90.0,),
                Container(
                  height: 30.0,
                  color: Colors.black,
                  width: 30.0,
                ),
              ],
            ),Row(
              children: [
                SizedBox(width: 81.0+26,),
                Container(
                  height: 30.0,
                  color: Colors.black,
                  width: 30.0,
                ),
                SizedBox(width: 90.0,),
                Container(
                  height: 30.0,
                  color: Colors.black,
                  width: 30.0,
                ),
              ],
            ),Row(
              children: [
                SizedBox(width: 140+26.0,),
                Container(
                  height: 30.0,
                  color: Colors.black,
                  width: 30.0,
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

