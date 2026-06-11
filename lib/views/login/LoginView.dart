import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
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
              decoration: InputDecoration(label: Text('E-Mail')),
              controller: tec_mail,
            ),
            TextFormField(
              decoration: InputDecoration(label: Text('Passwort')),
              controller: tec_password,
            ),
            OutlinedButton(onPressed: () => login(), child: Text('Log in')),
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

  Future<User?> login() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      final result = await auth.signInWithEmailAndPassword(
        email: tec_mail.text,
        password: tec_password.text,
      );
      user = result.user;
    } catch (ex) {
      print(ex.toString());
    }
    if (user != null) {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    }
    return user;
  }
}
