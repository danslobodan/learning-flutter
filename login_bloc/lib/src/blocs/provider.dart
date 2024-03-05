import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  Provider({required super.child, super.key});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  final bloc = Bloc();

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }
}
