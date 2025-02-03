import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style/app_colors.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundColor,
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    
    children: [
    //Benuter-Icon 
    Image.asset(Assets.splash.usericon.path,height: 170,width: 170,fit: BoxFit.cover,),
    SizedBox(height: 40),
    //E-Mail Feld
    SizedBox(
      width: MediaQuery.of(context).size.width *0.9,
      child: TextField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.email,color: AppColors.grey,),
      hintText: 'Email',
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      )
      ),
      
      ),
    ),
    SizedBox(height: 20),
    SizedBox(
      width: MediaQuery.of(context).size.width *0.9,
      child: TextField(
      obscureText: true,  
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.lock,color: AppColors.grey),
      hintText: 'Password',
      
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      )
      ),
      
      ),
    ),
    SizedBox(height: 10),
    Row(
      children: [
        Checkbox(value: false, onChanged: (value){}),
        Text('Remeber me',style: TextStyle(color: AppColors.white),)
      ],
    ),
    SizedBox(height: 20),

    //Login Button
  Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
      onPressed: () {},
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
          onPressed: () {},
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