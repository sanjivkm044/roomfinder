import 'package:flutter/material.dart';
import 'package:myroomfinder/widget/general_appBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralAppBar(
        title: "LoginScreen",
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
