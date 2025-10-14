import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nivas/Color_code.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const SizedBox(height: 160),
            Text(
              'Sign in now',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Schyler',
                  color: isDarkMode? Colors.white :Colors.black
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Please fill the details and create account',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 20,
                  fontFamily: 'Schyler',
                  color: isDarkMode? Colors.white :Colors.black
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color:isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Password Must Be 8 Character',
                  style: TextStyle(
                      fontSize: 15,
                      color: isDarkMode? Colors.white :Colors.black,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Schyler'
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: AppColors.darkPrimary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Schyler'),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                      fontSize: 20,
                      color: isDarkMode? Colors.white :Colors.black,
                      fontFamily: 'Schyler'
                  ),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                          color: isDarkMode? Colors.white : AppColors.darkAccent,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler'
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
