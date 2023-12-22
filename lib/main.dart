import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}

class MyGame extends FlameGame with TapCallbacks {
  @override





  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Sprite ekleme yeri
    final spriteComponent = SpriteComponent(
      size: Vector2(32, 32),
      sprite: Sprite(await Flame.images.load('attack.png')),  // fotografi yukle
    );

    // Sprite'ın konumunu ayarlamak için
    spriteComponent.position = Vector2(100, 100);
    // Oyun'a sprite'ı eklemek için
    add(spriteComponent);
  }

  @override
  void onTapDown(TapDownEvent event) {
    removeFromParent();
    event.handled = true;
  }
}