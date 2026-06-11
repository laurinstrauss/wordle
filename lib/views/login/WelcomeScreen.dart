// ignore_for_file: prefer_single_quotes

import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => WelcomeViewState();
}

class WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 5,
          children: [
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text("Log in"),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: Text("Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
