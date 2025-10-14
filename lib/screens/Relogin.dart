import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nivas/Color_code.dart';
import 'package:nivas/screens/Login.dart';
import 'package:nivas/screens/signup.dart';

class Relogin_screen extends StatefulWidget {
  const Relogin_screen({super.key});

  @override
  State<Relogin_screen> createState() => _Relogin_screenState();
}

class _Relogin_screenState extends State<Relogin_screen> {

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/loginimage.png"),
            SizedBox(height: 14,),
            Text(
              "Let's you in",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Schyler',
                  color: isDarkMode? Colors.white :Colors.black
              ),
            ),
            SizedBox(
              width: 364,
              child: OutlinedButton.icon(
                onPressed: () {},
                label: Row(
                  children: [
                    Spacer(),
                    Image.asset(
                      isDarkMode?
                    "assets/images/Vector.png"
                          :
                      "assets/images/Vector (2).png",width: 30,height: 30,),
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
            ),
            SizedBox(height: 16,),
            SizedBox(
              width: 364,
              child: OutlinedButton.icon(
                onPressed: () {},
                label: Row(
                  children: [
                    Spacer(),
                    Image.asset(
                      isDarkMode?
                    "assets/images/Vector (1).png"
                          :
                      "assets/images/Vector (3).png",width: 30,height: 30,),
                    SizedBox(width: 8),
                    Text('Continue with Facebook',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Schyler',color: isDarkMode? Colors.white :Colors.black),),
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
            ),

            SizedBox(
              width: 360,
              child: Row(
                children: [
                  const Expanded(child: Divider(endIndent: 10,color: AppColors.darkPrimary,)),
                  Text(
                    'or',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Schyler',
                      color: isDarkMode? Colors.white :Colors.black,

                    ),),
                  const Expanded(child: Divider(indent: 10,color: AppColors.darkPrimary,)),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: AppColors.darkPrimary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: const Text(
                  'Sign in with password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Schyler'),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Signup_screen()));
                },
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
            ),


          ],
        ),
      ),
    );
  }
}
