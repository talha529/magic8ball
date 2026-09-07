import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text("Ask me anything")),
        ),

        body: const Ball(),

      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballImg=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child:
          GestureDetector(
            onTap:() {
              setState(() {
                ballImg = Random().nextInt(5)+1;
                print("hello");
              });

            },

            child: Image.asset("images/ball$ballImg.png")
          ),
        ),

      ),
    );
  }
}

