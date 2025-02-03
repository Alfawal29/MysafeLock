
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style/app_colors.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Icon(Icons.menu,color: AppColors.primaryColor),
      title: Text('Hello,Ammar',style: TextStyle(color: AppColors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: AppColors.primaryColor,),),
     
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: CircleAvatar(
      
        foregroundImage: AssetImage('assets/splash/Ammar.png'),

        ),
        
        ),
        
        


      ],


      ),
   
    );
  }
}