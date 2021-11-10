import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatelessWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: const BallPage(),
        appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900]),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int randomBall = 3;

  void randomizer() {
    randomBall = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            child: Image.asset('images/ball$randomBall.png'),
            onPressed: () {
              setState(() {
                randomizer();
              });
            },
          ))
        ],
      ),
    );
  }
}
