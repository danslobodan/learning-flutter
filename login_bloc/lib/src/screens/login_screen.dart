import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  build(context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: const EdgeInsets.only(top: 25.0)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'EMail Address',
        ));
  }

  Widget passwordField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    const TextStyle textStyle = TextStyle(color: Colors.white);
    final ButtonStyle buttonStyle =
        ElevatedButton.styleFrom(backgroundColor: Colors.blue);
    return ElevatedButton(
      style: buttonStyle,
      child: const Text('Login', style: textStyle),
      onPressed: () {},
    );
  }
}
