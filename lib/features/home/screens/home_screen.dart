import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';
import 'package:flutter_application_1/features/home/widgets/category_card.dart';
import 'package:flutter_application_1/features/home/widgets/custom_text.dart';
import 'package:flutter_application_1/features/home/widgets/custombottomnavbar.dart';
import 'package:flutter_application_1/features/home/widgets/recent_item.dart';
import 'package:flutter_application_1/features/home/widgets/search_bar.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Searchbar(
              hintText: 'Ammar',
              leadingIcon: Icons.search,
              trailingIcon: Icons.filter_list,
              backgroundColor: Colors.white,
              iconColor: AppColors.primaryColor,
              hintTextcolor: AppColors.black,
            ),

            SizedBox(height: 20),

            SizedBox(height: 40),

            //Manage Password Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: 'Manage Password',
                  textColor: AppColors.white,
                  fontSize: 16,
                ),
                CustomText(
                  title: 'See All',
                  textColor: AppColors.grey,
                  fontSize: 14,
                ),
              ],
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                    icon: Icons.public,
                    label: 'Social',
                    borderColor: Color(0xFF6A73FC)),
                CategoryCard(
                    icon: Icons.app_blocking_outlined,
                    label: 'Apps',
                    borderColor: Color(0xFFFACC2F)),
                CategoryCard(
                    icon: Icons.credit_card,
                    label: 'Cards',
                    borderColor: Color(0xFF7DD5B3)),
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
                RecentItem(
                  title: 'Facebook',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.facebook,
                  bgColor: AppColors.green,
                ),
                RecentItem(
                  title: 'Figma',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.figma,
                  bgColor: AppColors.purple,
                ),
                RecentItem(
                  title: 'Snapchat',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.snapchat,
                  bgColor: AppColors.lightblue,
                ),
                RecentItem(
                  title: 'LinkedIn',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.linkedin,
                  bgColor: AppColors.green,
                ),
                RecentItem(
                  title: 'Instagram',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.instegram,
                  bgColor: AppColors.purple,
                ),
                RecentItem(
                  title: 'LinkedIn',
                  email: 'user.email@gmail.com',
                  imagePath: Assets.icons.linkedin,
                  bgColor: AppColors.green,
                ),
              ],
            ))
          ],
        ),
      ),

      //FloatingActionButton
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: FloatingActionButton(
          mini: true,
          onPressed: () {},
          backgroundColor: AppColors.primaryColor,
          child: Icon(Icons.add, color: AppColors.white),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom Naviation Bar
      bottomNavigationBar: const Custombottomnavbar(),
    );
  }
}
