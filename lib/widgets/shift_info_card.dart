// import 'package:flutter/material.dart';

// class ShiftInfoCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String value;
//   final Color iconColor;
//   final Color backgroundColor;

//   const ShiftInfoCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.value,
//     required this.iconColor,
//     required this.backgroundColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: backgroundColor,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(icon, color: iconColor),
//                   const SizedBox(width: 12),
//                   Text(title, style: const TextStyle(fontSize: 16)),
//                 ],
//               ),
//               Text(value,
//                   style: const TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
