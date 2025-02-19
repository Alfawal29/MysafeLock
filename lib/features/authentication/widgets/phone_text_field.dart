import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneTextField({
    super.key,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: AppColors.primaryColor,
        style: TextStyle(color: AppColors.white),
        controller: phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: AppColors.white),
          prefixIcon: Icon(
            Icons.flag,
            color: AppColors.primaryColor,
          ),
          hintText: 'Phone',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
