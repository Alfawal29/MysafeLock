import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color borderColor;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor = AppColors.white,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: borderColor.withAlpha(170),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(height: 10),
          Text(label,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white)),
        ],
      ),
    );
  }
}
