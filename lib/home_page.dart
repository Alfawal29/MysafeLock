
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style/app_colors.dart';



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
        radius: 18,
        foregroundImage: AssetImage('assets/splash/Ammar.png'),

        ),
        
        ),
        
      ],

      ),
     
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     
     
     children: [
     //Search Bar
     SizedBox(height: 20),
     Container(
     padding: EdgeInsets.symmetric(horizontal: 15),
     decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
     ),
     child: Row(
     children: [
     Icon(Icons.search,color:AppColors.primaryColor),
     SizedBox(width: 10),
     Expanded(child: 
     TextField(
     decoration: InputDecoration(
      hintText: 'Search',
      border: InputBorder.none
     ),

     )
     
     
     )



     ],


     ),


     )





     ],





      ),
      
      
      
      
      ),
      
   
    );
  }
}