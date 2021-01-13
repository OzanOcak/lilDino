import 'dart:ui';

import 'package:dino_game/game_object.dart';
import 'package:dino_game/sprite.dart';
import 'package:flutter/material.dart';

class Dino extends GameObject {
  Sprite dino = Sprite()
    ..imagePath = " assets/images/dino/dino_1.png"
    ..imageWidth = 88
    ..imageHeight = 94;

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      screenSize.width / 10,
      screenSize.height / 2 - dino.imageHeight,
      dino.imageWidth.toDouble(),
      dino.imageWidth.toDouble(),
    );
  }

  @override
  Widget render() => Image.asset("assets/images/dino/dino_1.png");

  @override
  void update() {}
}
