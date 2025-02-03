
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
     
     
     ),
     Icon(Icons.filter_list,color: AppColors.primaryColor),



     ],


     ),


     ),

     SizedBox(height: 40),

     //Manage Password Section
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text('Manage Password',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold,fontSize: 16),),
    Text('See All',style: TextStyle(color: AppColors.white,fontSize: 16,fontWeight: FontWeight.bold),)


    ],
    
    ),

    SizedBox(height: 25),

    Row( 
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    _buildCategoryCard(Icons.public, 'Social',AppColors.white,Color(0xFF6A73FC)),
    _buildCategoryCard(Icons.public, 'Apps',AppColors.white,Color(0xFFFACC2F)),
    _buildCategoryCard(Icons.public, 'Cards',AppColors.white,Color(0xFF7DD5B3)),
  

    ],


    )






     ],





      ),
      
      
      
      
      ),
      
   
    );
  }
}

Widget _buildCategoryCard(IconData icon,String label,Color scolor,Color color){
return Container(
width: 100,
height: 100,
decoration: BoxDecoration(

color: color.withAlpha(170),
borderRadius: BorderRadius.circular(15),


),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(icon,color: scolor,),
SizedBox(height: 10),
Text(label,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.white)),



],
),


);






}