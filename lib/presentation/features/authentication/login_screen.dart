import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myroomfinder/widget/general_appBar.dart';
import 'package:myroomfinder/widget/general_elevated_buttonWidget.dart';
import 'package:myroomfinder/widget/general_textformfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GeneralAppBar(
        title: "LoginScreen",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text("data"),
          ),
          GeneralTextFormField(
            controller: emailController,
            prefixIcon: const Icon(Icons.email),
            hintText: "email",
            labelText: "Email",
          ),
          GeneralTextFormField(
            controller: passWordController,
            prefixIcon: const Icon(Icons.verified_user_rounded),
            hintText: "Password",
            labelText: "Password",
            obscureText: true,
            suffixIcon: const Icon(Icons.remove_red_eye),
          ),
          GeneralElevatedButtonWidget(
            title: "Login",
            onTap: () {},
            height: 44.h,
          ),
        ],
      ),
    );
  }
}
