import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class RecentItem extends StatelessWidget {
  // Attribute
  final String title;
  final String email;
  final AssetGenImage imagePath;
  final Color iconColor;
  final Color bgColor;

  // Konstruktor
  const RecentItem({
    super.key,
    required this.title,
    required this.email,
    required this.imagePath,
    this.iconColor = Colors.blue,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: iconColor.withAlpha(50),
              child: imagePath.image(
                width: 38,
                height: 38,
                fit: BoxFit.cover,
              )),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
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
}
