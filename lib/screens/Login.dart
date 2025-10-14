import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivas/Color_code.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const SizedBox(height: 160),
              Text(
                'Login now',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    fontFamily: 'Schyler',
                      color: isDarkMode? Colors.white :Colors.black
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Please sign in to continue our app',
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
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/forgot');
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: isDarkMode? Colors.white :Colors.black,
                      fontWeight: FontWeight.w600,
                        fontFamily: 'Schyler'
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
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
              const Row(
                children: [
                  Expanded(child: Divider(endIndent: 10,color: AppColors.darkPrimary,)),
                  Text('or',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Schyler'),),
                  Expanded(child: Divider(indent: 10,color: AppColors.darkPrimary,)),
                ],
              ),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () {},
                label: Row(
                  children: [
                    Spacer(),
                    Image.asset(isDarkMode? "assets/images/Vector.png":"assets/images/Vector (2).png",width: 30,height: 30,),
                    SizedBox(width: 8),
                    Text('Continue with Google',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Schyler',color: isDarkMode? Colors.white :Colors.black),),
                    Spacer(),

                  ],
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                onPressed: () {},
                label: Row(
                  children: [
                    Spacer(),
                    Image.asset(isDarkMode? "assets/images/Vector (1).png":"assets/images/Vector (3).png",width: 30,height: 30,),
                    SizedBox(width: 8),
                    Text('Continue with Facebook',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Schyler',color: isDarkMode? Colors.white :Colors.black),
                    ),
                    Spacer(),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: isDarkMode? AppColors.darkPrimary :AppColors.lightPrimary),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 20,
                      color: isDarkMode? Colors.white :Colors.black,
                        fontFamily: 'Schyler'
                    ),
                    children: [
                      TextSpan(
                        text: 'Create an account',
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
      ),
    );
  }
}
