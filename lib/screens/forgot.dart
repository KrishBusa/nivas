import 'package:flutter/material.dart';

class Forgot_screen extends StatefulWidget {
  const Forgot_screen({super.key});

  @override
  State<Forgot_screen> createState() => _Forgot_screenState();
}

class _Forgot_screenState extends State<Forgot_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Forgot Password"),
      ),
    );
  }
}
