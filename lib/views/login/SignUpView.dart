import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => SignupViewState();
}

class SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 5,
          children: [
            TextFormField(
              decoration: InputDecoration(label: Text('Benutzername')),
            ),
            TextFormField(decoration: InputDecoration(label: Text('E-Mail'))),
            TextFormField(decoration: InputDecoration(label: Text('Passwort'))),
            OutlinedButton(onPressed: () => (), child: Text('Sign up')),
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
              child: Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
