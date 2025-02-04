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
        leading: Icon(Icons.menu, color: AppColors.primaryColor),
        title: Text(
          'Hello,Ammar',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: AppColors.primaryColor,
            ),
          ),
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
                  Icon(Icons.search, color: AppColors.primaryColor),
                  SizedBox(width: 10),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  )),
                  Icon(Icons.filter_list, color: AppColors.primaryColor),
                ],
              ),
            ),

            SizedBox(height: 40),

            //Manage Password Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Manage Password',
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryCard(
                    Icons.public, 'Social', AppColors.white, Color(0xFF6A73FC)),
                _buildCategoryCard(
                    Icons.public, 'Apps', AppColors.white, Color(0xFFFACC2F)),
                _buildCategoryCard(
                    Icons.public, 'Cards', AppColors.white, Color(0xFF7DD5B3)),
              ],
            ),
            SizedBox(height: 20),
            // Recently Used
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Used',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
                Text(
                  'Show all',
                  style: TextStyle(color: AppColors.grey, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView(
              children: [
              _buildRecentItem('Facebook', 'user.email@gmail.com',Assets.icons.facebook, Colors.blue,AppColors.green),
              _buildRecentItem('Figma', 'user.email@gmail.com', Assets.icons.figma, Colors.blue,AppColors.purple),
              _buildRecentItem('Sanpchat', 'user.email@gmail.com', Assets.icons.snapchat, Colors.blue,AppColors.lightblue),
              _buildRecentItem('Linkedin', 'user.email@gmail.com', Assets.icons.linkedin, Colors.blue,AppColors.green)


            


              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget _buildCategoryCard(
    IconData icon, String label, Color scolor, Color color) {
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
        Icon(
          icon,
          color: scolor,
        ),
        SizedBox(height: 10),
        Text(label,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColors.white)),
      ],
    ),
  );
}



Widget _buildRecentItem(
    String titel, String email, AssetGenImage imagepath, Color iconColor, Color bgcolor) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: iconColor.withAlpha(50),
          child : imagepath.image(
          width: 38,
          height: 38,
          fit: BoxFit.cover,
          )
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titel,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              email,
              style: TextStyle(color: AppColors.greyS),
            ),
          ],
        )
      ],
    ),
  );
}

