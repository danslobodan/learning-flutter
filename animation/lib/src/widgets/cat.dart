import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  const Cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network('https://i.imgur.com/3wMqbkt.png');
  }
}
