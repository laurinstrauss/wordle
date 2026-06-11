import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
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
            TextFormField(decoration: InputDecoration(label: Text('Passwort'))),
            OutlinedButton(onPressed: () => (), child: Text('Log in')),
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/signup'),
              child: Text('Sign up'),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/login/forgotpassword'),
              child: Text('Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}
