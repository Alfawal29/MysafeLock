import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';
import 'package:flutter_application_1/features/authentication/screens/sign_up_screen.dart';
import 'package:flutter_application_1/features/home/screens/home_screen.dart';

import 'package:flutter_application_1/gen/assets.gen.dart';

class SignApp extends StatefulWidget {
  const SignApp({super.key});

  @override
  State<SignApp> createState() => _SignAppState();
  
}
bool _remeber= false;

class _SignAppState extends State<SignApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Benuter-Icon
            Image.asset(
              
              Assets.splash.usericon.path,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            //E-Mail Feld
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color:AppColors.greyS,
                    ),
                    hintText: 'Email',
                    filled: true,
                    fillColor: AppColors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: AppColors.greyS),
                    hintText: 'Password',
                    filled: true,
                    fillColor: AppColors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CheckboxTheme(
                data: CheckboxThemeData(
                side: BorderSide(color: AppColors.primaryColor)

                ),  

                  child:Checkbox(
                    activeColor: AppColors.primaryColor,
                    value: _remeber , onChanged: (value) {setState(() {
                    _remeber =! _remeber;
                  });})),
                Text(
                  'Remeber me',
                  style: TextStyle(color: AppColors.white),
                )
              ],
            ),
            SizedBox(height: 20),

            //Login Button
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Login'),
                ),
              ),
            ),

            SizedBox(height: 20),
            // Create Account
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text('Create Account'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
