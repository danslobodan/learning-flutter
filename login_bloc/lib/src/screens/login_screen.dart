import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  build(context) {
    final bloc = Provider.of(context);

    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          Container(margin: const EdgeInsets.only(top: 25.0)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'EMail Address',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
        );
      },
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
