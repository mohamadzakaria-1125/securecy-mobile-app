// import 'package:flutter/material.dart';

// class RouteRunScreen extends StatelessWidget {
//   const RouteRunScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//         elevation: 0,
//         toolbarHeight: 15,
//       ),
//       body: SingleChildScrollView(
//         // padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.white, // main bar color
//               child: Row(
//                 children: [
//                   // Left section
//                   Container(
//                     height: double.infinity,
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     alignment: Alignment.centerLeft,
//                     padding: const EdgeInsets.symmetric(horizontal: 12),
//                     child: const Text(
//                       "BACKUP PATROL",
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                   ),

//                   // Divider space (same color as Scaffold background)
//                   Container(
//                     width:
//                         MediaQuery.of(context).size.width *
//                         0.005, // control how wide the divider looks
//                     height: double.infinity,

//                     color: Color.fromARGB(
//                       255,
//                       219,
//                       218,
//                       218,
//                     ), // same as scaffold background
//                   ),

//                   // Right section (menu icon)
//                   Container(
//                     height: double.infinity,
//                     color: Colors.white,
//                     width: MediaQuery.of(context).size.width * 0.145,
//                     child: IconButton(
//                       icon: const Icon(Icons.menu, color: Colors.grey),

//                       onPressed: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40),
//             _button(
//               context,
//               "Off-Location Incident Report",
//               Colors.orange,
//               () {},
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                   child: _button(context, "QR Check-In", Colors.green, () {}),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: _button(context, "NFC Check-In", Colors.green, () {}),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//               child: TextField(
//                 style: TextStyle(fontSize: 15),

//                 decoration: InputDecoration(
//                   isDense: true,
//                   labelStyle: TextStyle(color: Colors.grey),
//                   labelText: "Search for locations...",
//                   contentPadding: const EdgeInsets.symmetric(
//                     vertical: 8,
//                     horizontal: 12,
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(6),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             _locationCard(
//               title: "Compliance Patrol Backup Location",

//               address: "2526",
//             ),
//             const SizedBox(height: 30),
//             _locationCard(
//               title: "BINAH Shellcove Hit 2",
//               address: "15 Quayside Ave, Shellcove",
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _button(
//     BuildContext context,
//     String label,
//     Color color,
//     VoidCallback onPressed,
//   ) {
//     return SizedBox(
//       height: 48,
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: color,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(6),
//             ),
//           ),
//           child: Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _locationCard({required String title, required String address}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(6),
//           boxShadow: [
//             BoxShadow(
//               color: const Color.fromARGB(255, 26, 24, 24).withOpacity(0.4),
//               blurRadius: 6,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
//               decoration: const BoxDecoration(color: Colors.cyan),
//               child: Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
//               child: Text(
//                 address,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 2),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   _ActionButton(label: "Directions", icon: Icons.place),
//                   _ActionButton(label: "Map", icon: Icons.map),
//                   _ActionButton(label: "History", icon: Icons.history),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),

//             const Divider(height: 1), // ✅ divider at the bottom too
//             const Padding(
//               padding: EdgeInsets.fromLTRB(0, 20, 210, 20),
//               child: Text(
//                 "No check-ins for this run",
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ],
//         ),
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
// import 'package:flutter/material.dart';
// import 'package:securecy_mobile_app/Screens/Route_run_details_screen.dart';

// class RouteRunScreen extends StatelessWidget {
//   const RouteRunScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//         elevation: 0,
//         toolbarHeight: 15,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // 🔹 Top white bar
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.white,
//               child: Row(
//                 children: [
//                   Container(
//                     height: double.infinity,
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     alignment: Alignment.centerLeft,
//                     padding: const EdgeInsets.symmetric(horizontal: 12),
//                     child: const Text(
//                       "BACKUP PATROL",
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.005,
//                     height: double.infinity,
//                     color: const Color.fromARGB(255, 219, 218, 218),
//                   ),
//                   Container(
//                     height: double.infinity,
//                     color: const Color.fromARGB(255, 220, 37, 37),
//                     width: MediaQuery.of(context).size.width * 0.145,
//                     child: IconButton(
//                       icon: const Icon(Icons.menu, color: Colors.grey),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 40),

//             // 🔹 Top buttons
//             _button(
//               context,
//               "Off-Location Incident Report",
//               Colors.orange,
//               () {},
//             ),
//             const SizedBox(height: 10),

//             Row(
//               children: [
//                 Expanded(
//                   child: _button(context, "QR Check-In", Colors.green, () {}),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: _button(context, "NFC Check-In", Colors.green, () {}),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 10),

//             // 🔹 Search field
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 style: const TextStyle(fontSize: 15),
//                 decoration: InputDecoration(
//                   isDense: true,
//                   hintText: "Search for locations...",
//                   hintStyle: const TextStyle(color: Colors.grey),
//                   contentPadding: const EdgeInsets.symmetric(
//                     vertical: 8,
//                     horizontal: 12,
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(6),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10),

//             // 🔹 New Compliance cards
//             _complianceCard(
//               headerTitle: "Compliance",
//               docketNumber: "130234",
//               description: "***BAIUO*** Take carolla to the mechanic shop",
//               address: "2526",
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RouteRunDetailsScreen(
//                       docketNumber: "130234",
//                       description:
//                           "***BAIUO*** Take carolla to the mechanic shop",
//                       address: "2526",
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             _complianceCard(
//               headerTitle: "Compliance",
//               docketNumber: "130233",
//               description: "***BAIUO*** Drop off Jimmy in the office",
//               address: "2526",
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RouteRunDetailsScreen(
//                       docketNumber: "130233",
//                       description: "***BAIUO*** Drop off Jimmy in the office",
//                       address: "2526",
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 30),

//             // 🔹 Old location cards (already clickable)
//             _locationCard(
//               title: "Compliance Patrol Backup Location",
//               address: "2526",
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RouteRunDetailsScreen(
//                       docketNumber: "N/A",
//                       description: "Compliance Patrol Backup Location",
//                       address: "2526",
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 30),
//             _locationCard(
//               title: "BINAH Shellcove Hit 2",
//               address: "15 Quayside Ave, Shellcove",
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RouteRunDetailsScreen(
//                       docketNumber: "N/A",
//                       description: "BINAH Shellcove Hit 2",
//                       address: "15 Quayside Ave, Shellcove",
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 Reusable orange/green buttons
//   Widget _button(
//     BuildContext context,
//     String label,
//     Color color,
//     VoidCallback onPressed,
//   ) {
//     return SizedBox(
//       height: 48,
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: color,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(6),
//             ),
//           ),
//           child: Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // 🔹 Compliance card (green header version)
//   // Widget _complianceCard({
//   //   required String headerTitle,
//   //   required String docketNumber,
//   //   required String description,
//   //   required String address,
//   // }) {
//   //   return Padding(
//   //     padding: const EdgeInsets.symmetric(horizontal: 16),
//   //     child: Container(
//   //       decoration: BoxDecoration(
//   //         color: Colors.white,
//   //         borderRadius: BorderRadius.circular(6),
//   //         boxShadow: [
//   //           BoxShadow(
//   //             color: Colors.black.withOpacity(0.15),
//   //             blurRadius: 6,
//   //             offset: const Offset(0, 3),
//   //           ),
//   //         ],
//   //       ),
//   //       child: Column(
//   //         crossAxisAlignment: CrossAxisAlignment.start,
//   //         children: [
//   //           // Green header
//   //           Container(
//   //             width: double.infinity,
//   //             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//   //             decoration: BoxDecoration(
//   //               color: Colors.green[600],
//   //               borderRadius: const BorderRadius.only(
//   //                 topLeft: Radius.circular(6),
//   //                 topRight: Radius.circular(6),
//   //               ),
//   //             ),
//   //             child: Column(
//   //               crossAxisAlignment: CrossAxisAlignment.start,
//   //               children: [
//   //                 Text(
//   //                   headerTitle,
//   //                   style: const TextStyle(
//   //                     color: Colors.white,
//   //                     fontWeight: FontWeight.bold,
//   //                     fontSize: 15,
//   //                   ),
//   //                 ),
//   //                 const SizedBox(height: 4),
//   //                 Text(
//   //                   "Docket# $docketNumber",
//   //                   style: const TextStyle(color: Colors.white, fontSize: 14),
//   //                 ),
//   //                 const SizedBox(height: 2),
//   //                 Text(
//   //                   description,
//   //                   style: const TextStyle(
//   //                     color: Colors.white,
//   //                     fontSize: 13,
//   //                     fontWeight: FontWeight.w500,
//   //                   ),
//   //                 ),
//   //               ],
//   //             ),
//   //           ),

//   //           const SizedBox(height: 12),

//   //           // Content below header
//   //           Padding(
//   //             padding: const EdgeInsets.symmetric(horizontal: 12),
//   //             child: Column(
//   //               crossAxisAlignment: CrossAxisAlignment.start,
//   //               children: [
//   //                 Text(
//   //                   "Docket# $docketNumber",
//   //                   style: const TextStyle(
//   //                     fontWeight: FontWeight.bold,
//   //                     fontSize: 15,
//   //                   ),
//   //                 ),
//   //                 const SizedBox(height: 2),
//   //                 Text(description, style: const TextStyle(fontSize: 14)),
//   //                 const SizedBox(height: 6),
//   //                 Text(address, style: const TextStyle(fontSize: 14)),
//   //               ],
//   //             ),
//   //           ),

//   //           const SizedBox(height: 6),

//   //           // Buttons
//   //           Padding(
//   //             padding: const EdgeInsets.symmetric(vertical: 2),
//   //             child: Row(
//   //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //               children: const [
//   //                 _ActionButton(label: "Directions", icon: Icons.place),
//   //                 _ActionButton(label: "Map", icon: Icons.map),
//   //                 _ActionButton(label: "History", icon: Icons.history),
//   //               ],
//   //             ),
//   //           ),

//   //           const Divider(height: 1),

//   //           const Padding(
//   //             padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
//   //             child: Center(
//   //               child: Text("", style: TextStyle(color: Colors.grey)),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//   Widget _complianceCard({
//     required String headerTitle,
//     required String docketNumber,
//     required String description,
//     required String address,
//     required VoidCallback onTap, // ✅ Added
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: InkWell(
//         onTap: onTap, // ✅ Make it clickable
//         borderRadius: BorderRadius.circular(6),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(6),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.15),
//                 blurRadius: 6,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // 🔹 Green header
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 12,
//                   vertical: 14,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.green[600],
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(6),
//                     topRight: Radius.circular(6),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       headerTitle,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       "Docket# $docketNumber",
//                       style: const TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                     const SizedBox(height: 2),
//                     Text(
//                       description,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // 🔹 Main content
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Docket# $docketNumber",
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     const SizedBox(height: 2),
//                     Text(description, style: const TextStyle(fontSize: 14)),
//                     const SizedBox(height: 6),
//                     Text(address, style: const TextStyle(fontSize: 14)),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 6),

//               // 🔹 Buttons row
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 2),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: const [
//                     _ActionButton(label: "Directions", icon: Icons.place),
//                     _ActionButton(label: "Map", icon: Icons.map),
//                     _ActionButton(label: "History", icon: Icons.history),
//                   ],
//                 ),
//               ),

//               const Divider(height: 1),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
//                 child: Center(
//                   child: Text(
//                     "No check-ins for this run",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // 🔹 Old cyan header cards
//   Widget _locationCard({
//     required String title,
//     required String address,
//     required VoidCallback onTap, // 🔹 New parameter
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: InkWell(
//         onTap: onTap, // 🔹 Make it clickable
//         borderRadius: BorderRadius.circular(6),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(6),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.15),
//                 blurRadius: 6,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
//                 decoration: const BoxDecoration(color: Colors.cyan),
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 18),
//                 child: Text(
//                   address,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 2),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: const [
//                     _ActionButton(label: "Directions", icon: Icons.place),
//                     _ActionButton(label: "Map", icon: Icons.map),
//                     _ActionButton(label: "History", icon: Icons.history),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Divider(height: 1),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
//                 child: Text(
//                   "No check-ins for this run",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // 🔹 Action buttons
// class _ActionButton extends StatelessWidget {
//   final String label;
//   final IconData icon;

//   const _ActionButton({required this.label, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, size: 18, color: Colors.grey[700]),
//       label: Text(label, style: TextStyle(color: Colors.grey[700])),
//     );
//   }
// }
