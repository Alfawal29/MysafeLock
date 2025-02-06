import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style/app_colors.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/sign_app.dart';
import 'package:flutter_application_1/sign_up.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _isTapped = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal:25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.splash.logo.path,
              height: 150,
              width: 150,
            ),
            SizedBox(height: 30,),
            //Titel
            Text('Enhance safety\nwith\nTotal security',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.white),),
            SizedBox(height: 15),
            Text('Stop using unsecure passwords for your online\naccounts. Get the most secure and\ndifficult-to-crack passwords.',
            textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: AppColors.white),
       
            
            ),
            SizedBox(height: 30),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            _buildDot(isActive: true),
            SizedBox(width: 5),
            _buildDot(isActive: false),
            SizedBox(width: 5),
            _buildDot(isActive: false),



            ],




            ),
            SizedBox(height: 40),

            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()),
            );
            },
            style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )

            )
            

            , child: Text('Get Started')),

            SizedBox(height: 20),
            // Have An Account
            GestureDetector(
              onTapDown: (_) => _updateTap(true),
              onTapUp:(_) =>_updateTap(false) ,
              onTapCancel: () =>_updateTap(false),
              
              onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignApp()));
              },
            child: Text('Already have an account',style: TextStyle(color:_isTapped ? AppColors.backgroundColor:AppColors.white),),
            
            
            ),
            



          ],
        ),
      )),
      
    );
    
  }
  void _updateTap(bool tapped){
  
  setState(() {
    _isTapped=tapped;
  });


  }

  
}


// Dot Indicator 

Widget _buildDot({required bool isActive}){

return Container(
height: 8,
width: isActive ? 34:22,
decoration: BoxDecoration(
color: isActive ? AppColors.backgroundColor: AppColors.greyS,borderRadius: BorderRadius.circular(4),

),



);




}



