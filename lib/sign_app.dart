import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E547B),
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
      prefixIcon: Icon(Icons.email,color: Colors.grey,),
      hintText: 'Email',
      filled: true,
      fillColor: Colors.white,
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
      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
      hintText: 'Password',
      
      filled: true,
      fillColor: Colors.white,
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
        Text('Remeber me',style: TextStyle(color: Colors.white),)
      ],
    ),
    SizedBox(height: 20),

    //Login Button
    Align(
      alignment:Alignment.centerLeft,
      child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFDE8F1A),
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )
      
      
      )
      , child: Text('LOGIN',style: TextStyle(color: Colors.white),)),
    )

    ),

    SizedBox(height: 20),

    Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFDE8F1A),
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        )
        
        
        )
        , child: Text('Create Account',style: TextStyle(color: Colors.white),)),
      ),
    ),




    ],


    ),


    ),



    );
  }
}