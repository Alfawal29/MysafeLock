import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  // Attribute
  final String hintText;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color backgroundColor;
  final Color iconColor;
  final Color hintTextcolor;

  // Konstruktor
  const Searchbar(
      {super.key,
      required this.hintText,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.backgroundColor,
      required this.iconColor,
      required this.hintTextcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(leadingIcon, color: iconColor),
          SizedBox(width: 10),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: hintTextcolor),
              hintText: hintText,
              border: InputBorder.none,
            ),
          )),
          Icon(trailingIcon, color: iconColor),
        ],
      ),
    );
  }
}
