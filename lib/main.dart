import 'package:dino_game/dino.dart';
import 'package:flutter/material.dart';

void main() => runApp(LittleDino());

class LittleDino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Dino dino = Dino();
  double runDistance = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screeSize = MediaQuery.of(context).size;
    Rect dinoRect = dino.getRect(screeSize, runDistance);
    return Scaffold(
      appBar: AppBar(title: Text('little dino')),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: dinoRect.left,
            top: dinoRect.top,
            width: dinoRect.width,
            height: dinoRect.height,
            child: dino.render(),
          )
        ],
      ),
    );
  }
}
