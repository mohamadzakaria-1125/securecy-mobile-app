// import 'package:flutter/material.dart';

// class StartShiftCard extends StatelessWidget {
//   final VoidCallback onStart;

//   const StartShiftCard({super.key, required this.onStart});

//   @override
//   Widget build(BuildContext context) {
//     return _card(
//       icon: Icons.play_circle_fill,
//       title: "Start Your Shift",
//       subtitle: "Your rostered shift starts at 09:00.",
//       iconColor: Colors.green,
//       iconBackground: const Color(0xFFD4F9E2),
//       primaryText: "Start My Shift At 09:41",
//       onPrimary: onStart,
//       secondaryText: "Log My Rostered Start",
//     );
//   }
// }

// class EndShiftCard extends StatelessWidget {
//   final VoidCallback onEnd;

//   const EndShiftCard({super.key, required this.onEnd});

//   @override
//   Widget build(BuildContext context) {
//     return _card(
//       icon: Icons.stop_circle_outlined,
//       title: "End Your Shift",
//       subtitle: "You are rostered to end your shift at 17:00.",
//       iconColor: Colors.red,
//       iconBackground: const Color(0xFFF9D4D4),
//       primaryText: "End My Shift At 09:41",
//       onPrimary: onEnd,
//       secondaryText: "Log My Rostered End",
//     );
//   }
// }

// Widget _card({
//   required IconData icon,
//   required String title,
//   required String subtitle,
//   required Color iconColor,
//   required Color iconBackground,
//   required String primaryText,
//   required VoidCallback onPrimary,
//   required String secondaryText,
// }) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: Colors.white,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//         child: Column(
//           children: [
//             Container(
//               width: 60,
//               height: 60,
//               decoration: BoxDecoration(
//                 color: iconBackground,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Icon(icon, size: 40, color: iconColor),
//             ),
//             const SizedBox(height: 10),
//             Text(title,
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 6),
//             Text(subtitle, style: const TextStyle(color: Colors.grey)),
//             const SizedBox(height: 16),

//             // Primary button
//             SizedBox(
//               width: double.infinity,
//               height: 45,
//               child: ElevatedButton(
//                 onPressed: onPrimary,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: iconColor,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: Text(primaryText,
//                     style: const TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold)),
//               ),
//             ),
//             const SizedBox(height: 10),

//             // Secondary
//             SizedBox(
//               width: double.infinity,
//               height: 45,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: Text(secondaryText,
//                     style: const TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
