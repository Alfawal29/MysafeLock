import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';

class Custombottomnavbar extends StatelessWidget {
  const Custombottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.gradient,
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 19,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavbaricon(Icons.home),
              _buildNavbaricon(Icons.timer),
              _buildNavbaricon(Icons.key),
              _buildNavbaricon(Icons.home),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavbaricon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: AppColors.backgroundColor, size: 32)),
    );
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

