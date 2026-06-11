import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordViewState();
}

class ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 5,
          children: [
            TextFormField(decoration: InputDecoration(label: Text('E-Mail'))),
            OutlinedButton(onPressed: () => (), child: Text('Reset Password')),
            BackButton(onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
