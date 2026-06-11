import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => SignupViewState();
}

class SignupViewState extends State<SignupView> {
  final tec_username = TextEditingController();
  final tec_password = TextEditingController();
  final tec_mail = TextEditingController();

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
              controller: tec_username,
            ),
            TextFormField(
              decoration: InputDecoration(label: Text('E-Mail')),
              controller: tec_mail,
            ),
            TextFormField(
              decoration: InputDecoration(label: Text('Passwort')),
              controller: tec_password,
            ),
            OutlinedButton(onPressed: () => signup(), child: Text('Sign up')),
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

  Future<User?> signup() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final result = await auth.createUserWithEmailAndPassword(
      email: tec_mail.text,
      password: tec_password.text,
    );
    if (result.user != null) {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    }
    return result.user;
  }
}
