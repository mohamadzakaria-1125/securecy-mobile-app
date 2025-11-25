// import 'package:flutter/material.dart';

// class DrawerItem extends StatelessWidget {
//   final int index;
//   final int selectedIndex;
//   final String title;
//   final IconData icon;
//   final ValueChanged<int> onTap;

//   const DrawerItem({
//     super.key,
//     required this.index,
//     required this.selectedIndex,
//     required this.title,
//     required this.icon,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     bool isSelected = index == selectedIndex;
//     double width = MediaQuery.of(context).size.width * 0.60;

//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () => onTap(index),
//           child: Container(
//             width: width,
//             height: 50,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               color: isSelected ? const Color(0xFFC9E2F5) : Colors.transparent,
//             ),
//             child: Row(
//               children: [
//                 const SizedBox(width: 14),
//                 Icon(icon,
//                     size: 22,
//                     color: isSelected ? const Color(0xFF1C75BC) : Colors.black54),
//                 const SizedBox(width: 8),
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight:
//                         isSelected ? FontWeight.bold : FontWeight.w500,
//                     color:
//                         isSelected ? const Color(0xFF1C75BC) : Colors.black87,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//       ],
//     );
//   }
// }
