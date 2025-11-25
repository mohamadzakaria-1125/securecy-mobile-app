// import 'package:flutter/material.dart';

// class RouteRunPage extends StatelessWidget {
//   const RouteRunPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       key: const ValueKey('routeRunPage'),
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         children: [
//           // Example of the content you showed in the screenshot
//           ElevatedButton(
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orange,
//               minimumSize: const Size(double.infinity, 50),
//             ),
//             child: const Text("Off-Location Incident Report"),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     minimumSize: const Size(double.infinity, 50),
//                   ),
//                   child: const Text("QR Check-In"),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     minimumSize: const Size(double.infinity, 50),
//                   ),
//                   child: const Text("NFC Check-In"),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               hintText: "Search for locations...",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           _locationCard(
//             title: "Compliance Patrol Backup Location",
//             address: "2526",
//           ),
//           const SizedBox(height: 10),
//           _locationCard(
//             title: "BINAH Shellcove Hit 2",
//             address: "15 Quayside Ave, Shellcove",
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _locationCard({required String title, required String address}) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(6),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(10),
//             decoration: const BoxDecoration(
//               color: Colors.cyan,
//               borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
//             ),
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(address, textAlign: TextAlign.center),
//           ),
//           const Divider(height: 1),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: const [
//                 _ActionButton(label: "Directions", icon: Icons.place),
//                 _ActionButton(label: "Map", icon: Icons.map),
//                 _ActionButton(label: "History", icon: Icons.history),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(bottom: 8),
//             child: Text(
//               "No check-ins for this run",
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ActionButton extends StatelessWidget {
//   final String label;
//   final IconData icon;

//   const _ActionButton({required this.label, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, size: 18),
//       label: Text(label),
//     );
//   }
// }
