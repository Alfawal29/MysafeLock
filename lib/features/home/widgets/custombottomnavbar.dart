import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';

class Custombottomnavbar extends StatefulWidget {
  const Custombottomnavbar({super.key});

  @override
  State<Custombottomnavbar> createState() => _CustombottomnavbarState();
}

class _CustombottomnavbarState extends State<Custombottomnavbar> {
  int _selectedIndex = 0; // Speichert den akutelle Index

  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 238, 29, 151),
        currentIndex: _selectedIndex,
        onTap: _onitemTapped,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
              backgroundColor: AppColors.backgroundColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm, size: 30), label: "alarm"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(Icons.key, size: 30), label: "Key"),
        ]);
  }
}
























//       //Bottom Naviation Bar

//       bottomNavigationBar: SizedBox(
//         height: 70,
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: AppColors.gradient,
//           ),
//           child: BottomAppBar(
//             shape: CircularNotchedRectangle(),
//             notchMargin: 19,
//             color: Colors.transparent,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 3),
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.home,
//                         color: AppColors.backgroundColor,
//                         size: 32,
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 3),
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.timer,
//                           color: AppColors.backgroundColor, size: 32)),
//                 ),
//                 //SizedBox(width: 20),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 3),
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.key,
//                           color: AppColors.backgroundColor, size: 32)),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 3),
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.person,
//                           color: AppColors.backgroundColor, size: 32)),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

