import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wordle/firebase_options.dart';
import 'package:wordle/themes/ButtonThemes.dart';
import 'package:wordle/themes/InputThemes.dart';
import 'package:wordle/views/home/HomeView.dart';
import 'package:wordle/views/profile/ProfileView.dart';
import 'package:wordle/views/login/ForgotPasswordView.dart';
import 'package:wordle/views/login/LoginView.dart';
import 'package:wordle/views/login/SignUpView.dart';
import 'package:wordle/views/login/WelcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        outlinedButtonTheme: ButtonThemes.outlinedButtonThemeData,
        inputDecorationTheme: TextInputThemes.outlinedInputFieldTheme,
      ),
      routes: {
        '/': (context) => const WelcomeView(),
        '/login': (context) => const LoginView(),
        '/login/forgotpassword': (context) => const ForgotPasswordView(),
        '/signup': (context) => const SignupView(),
        '/home': (context) => const HomeView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
