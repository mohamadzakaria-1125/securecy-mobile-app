// import 'package:flutter/material.dart';

// class BackupPatrolAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final VoidCallback? onMenuPressed;

//   const BackupPatrolAppBar({super.key, this.onMenuPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Row(
//           children: [
//             Expanded(
//               flex: 8,
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 child: const Text(
//                   "BACKUP PATROL",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                     letterSpacing: 1.2,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               width: 1,
//               color: const Color.fromARGB(255, 219, 218, 218),
//             ),
//             Expanded(
//               flex: 2,
//               child: IconButton(
//                 icon: const Icon(Icons.menu, color: Colors.black),
//                 onPressed: onMenuPressed,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(50);
// }
