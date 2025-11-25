// import 'package:flutter/material.dart';
// import 'package:securecy_mobile_app/Screens/Route_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final bool hasUnconfirmedShifts =
//         false; // Example: false for "No Unconfirmed Shifts"

//     // Determine the content based on the status
//     final Color buttonColor = hasUnconfirmedShifts
//         ? Colors.amber
//         : Colors.green;
//     final IconData statusIcon = hasUnconfirmedShifts
//         ? Icons.access_time
//         : Icons.check;
//     final String buttonText = hasUnconfirmedShifts
//         ? '3 Pending Shifts'
//         : 'No Unconfirmed Shifts';
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 243, 241, 241),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//         elevation: 0,
//         toolbarHeight: 15,
//       ),
//       body: SingleChildScrollView(
//         // padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: [
//             //     const Text(
//             //       "BACKUP PATROL",
//             //       style: TextStyle(
//             //         color: Colors.black,
//             //         fontWeight: FontWeight.bold,
//             //         fontSize: 15,
//             //         letterSpacing: 1.2,
//             //       ),
//             //     ),

//             //     IconButton(
//             //       icon: const Icon(Icons.menu, color: Colors.black),
//             //       onPressed: () {},
//             //     ),
//             //   ],
//             // ),
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
//                         color: Colors.black,
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
//                       icon: const Icon(Icons.menu, color: Colors.black),

//                       onPressed: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 30),

//             SizedBox(
//               width: double.infinity,
//               height: 60,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
//                     child: Image.asset(
//                       "assets/images/securecy.png",
//                       height: 50,
//                     ),
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 0.0,
//                       bottom: double.infinity,
//                     ),
//                     child: IconButton(
//                       alignment: AlignmentGeometry.xy(
//                         MediaQuery.of(context).size.width * 0.17,
//                         0,
//                       ),
//                       icon: const Icon(Icons.sync, color: Colors.black),
//                       iconSize: 22,
//                       onPressed: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 16),

//             // Route Run
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               child: _homeButton(
//                 context,
//                 color: Colors.green,
//                 label: "Route Run",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => const RouteRunScreen()),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 10),

//             // Activity Log
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               child: _homeButton(
//                 context,
//                 color: Colors.cyan,
//                 label: "Activity Log",
//                 onPressed: () {},
//               ),
//             ),
//             const SizedBox(height: 5),

//             // End Shift card
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF4A4A4A),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Column(
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         // End shift logic
//                       },
//                       icon: const Icon(
//                         Icons.stop_circle_outlined,
//                         color: Colors.white,
//                         size: 60,
//                       ),
//                     ),

//                     const Text(
//                       "End Your Shift",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text.rich(
//                       TextSpan(
//                         text: "You are rostered to end your shift at 17:00. ",
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 13,
//                         ), // Default style

//                         children: <TextSpan>[
//                           TextSpan(
//                             text: "ONLY if you have been asked to end late",
//                             style: const TextStyle(
//                               decoration: TextDecoration.underline,
//                               decorationColor:
//                                   Colors.white, // This applies the underline
//                               color: Colors.white,
//                               fontSize: 13,
//                               // Optional: You can make the underlined text bold as well
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextSpan(
//                             text:
//                                 " press the red button to end your shift at 12:54",
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 13,
//                             ), // Default style
//                           ),
//                         ],
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 0,
//                         horizontal: 40,
//                       ),
//                       child: SizedBox(
//                         width: double.infinity,
//                         height: 60,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.red,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                           child: Text(
//                             "End my Shift at 12:54",
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 0,
//                         horizontal: 40,
//                       ),
//                       child: SizedBox(
//                         width: double.infinity,
//                         height: 60,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.green,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                           child: Text(
//                             "Log my rostered end",
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 35),

//             // Bottom bar
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 // Use a single ElevatedButton for the whole component
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Handle button press, e.g., navigate to pending shifts list
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor:
//                         buttonColor, // Dynamic color (Green or Amber)
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(
//                         10,
//                       ), // More rounded corners
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                   ),
//                   child: Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment.start, // Align content to the left
//                     children: [
//                       // 1. Calendar Icon (Aligned to the start, acts as the primary icon)
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.calendar_today_outlined,
//                           color: Colors.white,
//                         ),
//                       ),

//                       // Use Spacer or SizedBox to push the text/status group
//                       const SizedBox(width: 20),

//                       // 2. Status Icon (Checkmark or Clock)
//                       Icon(statusIcon, color: Colors.white, size: 20),

//                       // 3. Status Text
//                       const SizedBox(width: 8),
//                       Text(
//                         buttonText,
//                         style: const TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 // Use a single ElevatedButton for the whole component
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Handle button press, e.g., navigate to pending shifts list
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor:
//                         Colors.cyan, // Dynamic color (Green or Amber)
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(
//                         10,
//                       ), // More rounded corners
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                   ),
//                   child: Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment.start, // Align content to the left
//                     children: [
//                       // 1. Calendar Icon (Aligned to the start, acts as the primary icon)
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.event_available_outlined,
//                           color: Colors.white,
//                         ),
//                       ),

//                       // Use Spacer or SizedBox to push the text/status group
//                       const SizedBox(width: 50),
//                       Text(
//                         "Upcoming Shifts",
//                         style: const TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 25),
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.white, // main bar color
//               child: Row(
//                 children: [
//                   // Left section
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 0,
//                       horizontal: 28,
//                     ),
//                     child: SizedBox(
//                       height: double.infinity,
//                       width: MediaQuery.of(context).size.width * 0.85,

//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                             vertical: 0,
//                             horizontal: 5,
//                           ),
//                           child: Image.asset(
//                             "assets/images/securecy.png",
//                             height: 25,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _homeButton(
//     BuildContext context, {
//     required Color color,
//     required String label,
//     required VoidCallback onPressed,
//   }) {
//     return SizedBox(
//       width: double.infinity,
//       height: 48,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//         ),
//         child: Text(
//           label,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool hasStartedShift = false; // 👈 dynamic flag
//   Widget _buildDrawer(BuildContext context) {
//     return Drawer(
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(16),
//           bottomRight: Radius.circular(16),
//         ),
//       ),
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // --- Profile Section ---
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   const CircleAvatar(
//                     radius: 22,
//                     backgroundColor: Color(0xFFC9E2F5),
//                     child: Text(
//                       "ZR",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                         "Ziad Raad",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Text(
//                         "Basirax Team",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Divider(),

//             // --- Drawer Items ---
//             _drawerItem(Icons.home_outlined, "Home Page", isSelected: true),
//             _drawerItem(Icons.schedule_outlined, "Upcoming Shifts"),
//             _drawerItem(Icons.pending_actions_outlined, "Unaccepted Shifts"),
//             _drawerItem(Icons.history_outlined, "Past Shifts"),
//             _drawerItem(Icons.block_outlined, "Request a Blockout"),
//             _drawerItem(Icons.badge_outlined, "Show Master Licence"),
//             _drawerItem(Icons.insert_drive_file_outlined, "Your Documents"),
//             _drawerItem(Icons.report_outlined, "Your Incident Report"),

//             const Spacer(),
//             const Divider(),

//             // --- Logout ---
//             ListTile(
//               leading: const Icon(Icons.logout, color: Colors.red),
//               title: const Text(
//                 "Log Out",
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget _drawerItem(IconData icon, String title, {bool isSelected = false}) {
//   //   double itemWidth = MediaQuery.of(context).size.width * 0.6;
//   //   return Center(
//   //     child: SizedBox(
//   //       width: itemWidth,
//   //       child: Container(
//   //         decoration: BoxDecoration(
//   //           borderRadius: BorderRadius.circular(8),
//   //           color: isSelected ? const Color(0xFFC9E2F5) : Colors.transparent,
//   //         ),

//   //         child: ListTile(
//   //           leading: Icon(
//   //             icon,
//   //             color: isSelected ? const Color(0xFF1C75BC) : Colors.black54,
//   //           ),
//   //           title: Text(
//   //             title,
//   //             style: TextStyle(
//   //               fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
//   //               color: isSelected ? const Color(0xFF1C75BC) : Colors.black87,
//   //             ),
//   //           ),
//   //           onTap: () {},
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
//   Widget _drawerItem(IconData icon, String title, {bool isSelected = false}) {
//     double itemWidth = MediaQuery.of(context).size.width * 0.60; // 80%

//     return Column(
//       children: [
//         Center(
//           child: Container(
//             width: itemWidth,
//             height:
//                 MediaQuery.of(context).size.height *
//                 0.048, // fixed height like screenshot
//             decoration: BoxDecoration(
//               color: isSelected ? const Color(0xFFC9E2F5) : Colors.transparent,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Row(
//               children: [
//                 const SizedBox(width: 14),

//                 Icon(
//                   icon,
//                   size: 22,
//                   color: isSelected ? const Color(0xFF1C75BC) : Colors.black54,
//                 ),

//                 const SizedBox(width: 7),

//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: isSelected
//                           ? FontWeight.bold
//                           : FontWeight.w500,
//                       color: isSelected
//                           ? const Color(0xFF1C75BC)
//                           : Colors.black87,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(height: 10), // spacing
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF4F6F9),
//       drawer: _buildDrawer(context),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // --- Top Bar ---
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 12,
//                   vertical: 12,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // IconButton(
//                     //   icon: const Icon(Icons.menu, color: Colors.black87),
//                     //   onPressed: () {
//                     //     Scaffold.of(context).openDrawer(); // 👈 open drawer
//                     //   },
//                     // ),
//                     Builder(
//                       builder: (context) => IconButton(
//                         icon: const Icon(Icons.menu, color: Colors.black87),
//                         onPressed: () {
//                           Scaffold.of(context).openDrawer();
//                         },
//                       ),
//                     ),
//                     const Text(
//                       "Backup Patrol",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.refresh, color: Colors.black87),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // --- Start Route Run Button ---
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 0,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: 48,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF1C75BC),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       "Start Route Run",
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               // --- See Activity Log ---
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 0,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: 48,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       "See Activity Log",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Color(0xFF1C75BC),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // --- End Your Shift Card ---
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(
//               //     horizontal: 20,
//               //     vertical: 0,
//               //   ),
//               //   child: Container(
//               //     // shape: RoundedRectangleBorder(
//               //     //   borderRadius: BorderRadius.circular(8),
//               //     // ),
//               //     // elevation: 3,
//               //     decoration: BoxDecoration(
//               //       borderRadius: BorderRadius.circular(8),
//               //       color: Colors.white,
//               //     ),
//               //     child: Padding(
//               //       padding: const EdgeInsets.symmetric(
//               //         horizontal: 16,
//               //         vertical: 20,
//               //       ),
//               //       child: Column(
//               //         children: [
//               //           Container(
//               //             width: 60,
//               //             height: 60,
//               //             decoration: BoxDecoration(
//               //               color: Color(0xFFF9D4D4),

//               //               borderRadius: BorderRadius.circular(12),
//               //             ),
//               //             child: IconButton(
//               //               onPressed: () {},
//               //               padding: EdgeInsets.zero,
//               //               icon: const Icon(
//               //                 Icons.stop_circle_outlined,
//               //                 color: Colors
//               //                     .red, // The icon color (red in the image)
//               //                 size:
//               //                     40, // Reduced size slightly so it fits nicely inside the 60x60 container
//               //               ),
//               //             ),
//               //           ),

//               //           const SizedBox(height: 10),
//               //           const Text(
//               //             "End Your Shift",
//               //             style: TextStyle(
//               //               fontSize: 18,
//               //               fontWeight: FontWeight.bold,
//               //             ),
//               //           ),
//               //           const SizedBox(height: 6),
//               //           const Text(
//               //             "You are rostered to end your shift at 17:00.",
//               //             style: TextStyle(color: Colors.grey),
//               //           ),
//               //           const SizedBox(height: 16),

//               //           // Red button
//               //           SizedBox(
//               //             width: double.infinity,
//               //             height: 45,
//               //             child: ElevatedButton(
//               //               onPressed: () {},
//               //               style: ElevatedButton.styleFrom(
//               //                 backgroundColor: Colors.red,
//               //                 shape: RoundedRectangleBorder(
//               //                   borderRadius: BorderRadius.circular(8),
//               //                 ),
//               //               ),
//               //               child: const Text(
//               //                 "End My Shift At 09:41",
//               //                 style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 15,
//               //                   fontWeight: FontWeight.bold,
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           const SizedBox(height: 10),

//               //           // Green button
//               //           SizedBox(
//               //             width: double.infinity,
//               //             height: 45,
//               //             child: ElevatedButton(
//               //               onPressed: () {},
//               //               style: ElevatedButton.styleFrom(
//               //                 backgroundColor: Colors.green,
//               //                 shape: RoundedRectangleBorder(
//               //                   borderRadius: BorderRadius.circular(8),
//               //                 ),
//               //               ),
//               //               child: const Text(
//               //                 "Log My Rostered End",
//               //                 style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 15,
//               //                   fontWeight: FontWeight.bold,
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 0,
//                 ),
//                 child: hasStartedShift
//                     ? _endShiftCard(
//                         context,
//                         onEnd: () {
//                           setState(() => hasStartedShift = false);
//                         },
//                       )
//                     : _startShiftCard(
//                         context,
//                         onStart: () {
//                           setState(() => hasStartedShift = true);
//                         },
//                       ),
//               ),
//               const SizedBox(height: 20),

//               // --- Unaccepted Shifts Card ---
//               _ShiftInfoCard(
//                 icon: Icons.calendar_today_outlined,
//                 title: "Unaccepted Shifts",
//                 value: "0",
//                 iconColor: const Color(0xFF1C75BC),
//                 backgroundColor: Color(0xFFC9E2F5),
//               ),
//               const SizedBox(height: 10),

//               // --- Upcoming Shifts Card ---
//               _ShiftInfoCard(
//                 icon: Icons.calendar_today_outlined,
//                 title: "Upcoming Shifts",
//                 value: "3",
//                 iconColor: Colors.green,
//                 backgroundColor: Color(0xFFC6F1DB),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _ShiftInfoCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String value;
//   final Color iconColor;
//   final Color backgroundColor; // NEW
//   const _ShiftInfoCard({
//     required this.icon,
//     required this.title,
//     required this.value,
//     required this.iconColor,
//     required this.backgroundColor, // NEW
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: backgroundColor, // UPDATED
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
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               Text(
//                 value,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget _startShiftCard(BuildContext context, {required VoidCallback onStart}) {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(8),
//       color: Colors.white,
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//       child: Column(
//         children: [
//           Container(
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//               color: const Color(0xFFD4F9E2),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: IconButton(
//               onPressed: onStart,
//               padding: EdgeInsets.zero,
//               icon: const Icon(
//                 Icons.play_circle_fill,
//                 color: Colors.green,
//                 size: 40,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             "Start Your Shift",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 6),
//           const Text(
//             "You are rostered shift is scheduled to start at 09:00.",
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.grey),
//           ),
//           const SizedBox(height: 16),
//           SizedBox(
//             width: double.infinity,
//             height: 45,
//             child: ElevatedButton(
//               onPressed: onStart,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: const Text(
//                 "Start My Shift At 09:41",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           SizedBox(
//             width: double.infinity,
//             height: 45,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: const Text(
//                 "Log My Rostered Start",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget _endShiftCard(BuildContext context, {required VoidCallback onEnd}) {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(8),
//       color: Colors.white,
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//       child: Column(
//         children: [
//           Container(
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//               color: const Color(0xFFF9D4D4),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: IconButton(
//               onPressed: onEnd,
//               padding: EdgeInsets.zero,
//               icon: const Icon(
//                 Icons.stop_circle_outlined,
//                 color: Colors.red,
//                 size: 40,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             "End Your Shift",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 6),
//           const Text(
//             "You are rostered to end your shift at 17:00.",
//             style: TextStyle(color: Colors.grey),
//           ),
//           const SizedBox(height: 16),
//           SizedBox(
//             width: double.infinity,
//             height: 45,
//             child: ElevatedButton(
//               onPressed: onEnd,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: const Text(
//                 "End My Shift At 09:41",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           SizedBox(
//             width: double.infinity,
//             height: 45,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: const Text(
//                 "Log My Rostered End",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:securecy_mobile_app/Screens/Route_Run_screen.dart';
import 'package:securecy_mobile_app/Screens/custom_drawer.dart';
// import 'package:securecy_mobile_app/Screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hasStartedShift = false; // 👈 whether your presses start shifts
  String selectedMenu = "Home Page"; // which page to show

  Widget _buildPageContent() {
    switch (selectedMenu) {
      case "Route Run":
        return PatrolDashboardScreen(); // 👈 embed it directly

      case "Home Page":
        return _homePageContent();

      case "Upcoming Shifts":
        return _simplePage("Upcoming Shifts");

      case "Unaccepted Shifts":
        return _simplePage("Unaccepted Shifts");

      case "Past Shifts":
        return _simplePage("Past Shifts");

      case "Request a Blockout":
        return _simplePage("Request a Blockout");

      case "Show Master Licence":
        return _simplePage("Master Licence");

      case "Your Documents":
        return _simplePage("Your Documents");

      case "Your Incident Report":
        return _simplePage("Incident Report");

      default:
        return _homePageContent();
    }
  }

  Widget _simplePage(String title) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Text(
          "$title Page",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _homePageContent() {
    return Column(
      children: [
        const SizedBox(height: 20),

        // Start Route Run
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                setState(() => selectedMenu = "Route Run");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1C75BC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Start Route Run",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        // See Activity Log
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "See Activity Log",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1C75BC),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // SHIFT CARD (dynamic)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: hasStartedShift
              ? _endShiftCard(
                  context,
                  onEnd: () {
                    setState(() => hasStartedShift = false);
                  },
                )
              : _startShiftCard(
                  context,
                  onStart: () {
                    setState(() => hasStartedShift = true);
                  },
                ),
        ),

        const SizedBox(height: 20),

        // Unaccepted Shifts
        _ShiftInfoCard(
          icon: TablerIcons.calendar_clock,
          title: "Unaccepted Shifts",
          value: "0",
          iconColor: const Color(0xFF1C75BC),
          backgroundColor: const Color(0xFFC9E2F5),
          iconBackgroundColor: Color(0xFF1766A8),
        ),

        const SizedBox(height: 10),

        // Upcoming Shifts
        _ShiftInfoCard(
          // icon: Icons.calendar_today_outlined,
          svgPath: "assets/images/svgs/calendar-custom.svg",
          title: "Upcoming Shifts",
          value: "3",
          iconColor: Colors.green,
          backgroundColor: const Color(0xFFC6F1DB),
          iconBackgroundColor: Color(0xFF178C5B),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      drawer: CustomDrawer(
        selectedMenu: selectedMenu,
        onMenuSelected: (value) {
          setState(() => selectedMenu = value);
        },
      ),

      body: SafeArea(
        child: Column(
          children: [
            // --- Top Bar ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IconButton(
                  //   icon: const Icon(Icons.menu, color: Colors.black87),
                  //   onPressed: () {
                  //     Scaffold.of(context).openDrawer(); // 👈 open drawer
                  //   },
                  // ),
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(
                        TablerIcons.menu_2,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                  const Text(
                    "Backup Patrol",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(
                      TablerIcons.refresh,
                      color: Colors.black87,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              child: selectedMenu == "Route Run"
                  ? _buildPageContent() // no scrolling wrapper
                  : SingleChildScrollView(child: _buildPageContent()),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShiftInfoCard extends StatelessWidget {
  final IconData? icon; // optional IconData
  final String? svgPath; // optional SVG asset
  final String title;
  final String value;
  final Color iconColor;
  final Color backgroundColor;
  final Color iconBackgroundColor; // NEW
  const _ShiftInfoCard({
    this.icon,
    this.svgPath,
    required this.title,
    required this.value,
    required this.iconColor,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    // NEW
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor, // UPDATED
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: svgPath != null
                          ? SvgPicture.asset(
                              svgPath!,
                              width: 22,
                              height: 22,
                              color: Colors.white,
                            )
                          : Icon(icon, color: Colors.white, size: 24),
                    ),
                  ),
                  // if (svgPath != null)
                  //   SvgPicture.asset(
                  //     svgPath!,
                  //     width: 22,
                  //     height: 22,
                  //     color: iconColor,
                  //   )
                  // // 🔥 Otherwise use normal icon
                  // else if (icon != null)
                  //   Icon(icon, color: iconColor),
                  const SizedBox(width: 12),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _startShiftCard(BuildContext context, {required VoidCallback onStart}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFD4F9E2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: onStart,
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/images/svgs/player-stop 1.svg",
                width: 40,
                height: 40,
                color: Colors.green, // Optional: apply color
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Start Your Shift",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          const Text(
            "You are rostered shift is scheduled to start at 09:00.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: onStart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Start My Shift At 09:41",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Log My Rostered Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _endShiftCard(BuildContext context, {required VoidCallback onEnd}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFF9D4D4),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: onEnd,
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/images/svgs/stop.svg",
                width: 40,
                height: 40,
                color: Colors.red, // Optional: apply color
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "End Your Shift",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          const Text(
            "You are rostered to end your shift at 17:00.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: onEnd,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "End My Shift At 09:41",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Log My Rostered End",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
