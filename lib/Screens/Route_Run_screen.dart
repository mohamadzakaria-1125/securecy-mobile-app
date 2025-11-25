// import 'package:flutter/material.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class PatrolDashboardScreen extends StatefulWidget {
//   const PatrolDashboardScreen({Key? key}) : super(key: key);

//   @override
//   _PatrolDashboardScreenState createState() => _PatrolDashboardScreenState();
// }

// class _PatrolDashboardScreenState extends State<PatrolDashboardScreen> {
//   final TextEditingController _searchController = TextEditingController();

//   // Sample patrol stops data
//   final List<Map<String, dynamic>> patrolStops = [
//     {
//       'status': 'Alarm Response',
//       'color': Color(0xFFB72427),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'In Progress',
//       'color': Color(0xFFD4861B),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Priority Stop',
//       'color': Color(0xFF163496),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Normal Stop',
//       'color': Color(0xFF1766A8),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Completed',
//       'color': Color(0xFF178C5B),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//   ];

//   List<Map<String, dynamic>> filteredStops = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredStops = patrolStops;
//     _searchController.addListener(_filterStops);
//   }

//   void _filterStops() {
//     final query = _searchController.text.toLowerCase();
//     setState(() {
//       filteredStops = patrolStops.where((stop) {
//         return stop['location'].toLowerCase().contains(query) ||
//             stop['status'].toLowerCase().contains(query) ||
//             stop['description'].toLowerCase().contains(query) ||
//             stop['docket'].toLowerCase().contains(query);
//       }).toList();
//     });
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   // void _onRefresh() {
//   //   // Add your refresh logic here
//   //   ScaffoldMessenger.of(
//   //     context,
//   //   ).showSnackBar(const SnackBar(content: Text("Refreshed!")));
//   // }

//   void _onQrCheckIn() {
//     // Add QR check in logic here
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("QR Check In pressed")));
//   }

//   void _onNfcCheckIn() {
//     // Add NFC check in logic here
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("NFC Check In pressed")));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//           child: ElevatedButton.icon(
//             onPressed: () {},
//             icon: const Icon(
//               TablerIcons.alert_hexagon,
//               color: Color(0xFF1C75BC),
//               size: 20,
//             ),
//             label: const Text(
//               'Off- Location Incident Report',
//               style: TextStyle(color: Color(0xFF111827)),
//             ),
//             style: ElevatedButton.styleFrom(
//               minimumSize: Size(double.infinity, 50),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               backgroundColor: Colors.white,
//             ),
//           ),
//         ),
//         // Buttons Row
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           child: Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: _onQrCheckIn,
//                   icon: const Icon(
//                     TablerIcons.qrcode,
//                     color: Color(0xFF1C75BC),
//                     size: 20,
//                   ),
//                   label: const Text(
//                     'QR Check In',
//                     style: TextStyle(color: Color(0xFF111827)),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: _onNfcCheckIn,
//                   icon: SvgPicture.asset(
//                     "assets/images/svgs/lets-icons--nfc 1.svg",
//                     color: Color(0xFF1C75BC),
//                   ),
//                   label: const Text(
//                     'NFC Check In',
//                     style: TextStyle(color: Color(0xFF111827)),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         // Search Bar
//         // Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 16),
//         //   child: TextField(
//         //     controller: _searchController,
//         //     decoration: InputDecoration(
//         //       prefixIcon: const Icon(Icons.search),
//         //       hintText: 'Search for a location',
//         //       border: OutlineInputBorder(
//         //         borderRadius: BorderRadius.circular(8),

//         //       ),

//         //       contentPadding: const EdgeInsets.symmetric(
//         //         horizontal: 16,
//         //         vertical: 14,
//         //       ),
//         //       fillColor: Color(0xFFE5E7EB),
//         //       filled: true,
//         //     ),
//         //   ),
//         // ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Container(
//             // 1. Add BoxDecoration for the subtle shadow and rounded corners
//             decoration: BoxDecoration(
//               color: const Color(
//                 0xFFF3F4F6,
//               ), // Lighter background fill (gray-100)
//               borderRadius: BorderRadius.circular(
//                 10,
//               ), // Match the field's radius
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(
//                     0.05,
//                   ), // Very faint shadow color
//                   spreadRadius: 1,
//                   blurRadius: 4,
//                   offset: const Offset(0, 2), // Subtle lift
//                 ),
//               ],
//             ),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.search, color: Color(0xFF6B7280)),
//                 hintText: 'Search for a location',
//                 hintStyle: const TextStyle(color: Color(0xFF6B7280)),

//                 // 2. Critical: Remove the border line completely in all states
//                 border: InputBorder.none, // Removes the default border
//                 // 4. Content padding adjustment
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal:
//                       16, // Padding is handled by the prefixIcon/hintText alignment
//                   vertical: 14,
//                 ),
//               ),
//             ),
//           ),
//         ),

//         const SizedBox(height: 10),

//         // List of Cards
//         Expanded(
//           child: filteredStops.isEmpty
//               ? const Center(child: Text("No patrol stops found."))
//               : ListView.builder(
//                   itemCount: filteredStops.length,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   itemBuilder: (context, index) {
//                     final stop = filteredStops[index];
//                     return PatrolStopCard(
//                       status: stop['status'],
//                       color: stop['color'],
//                       location: stop['location'],
//                       description: stop['description'],
//                       address: stop['address'],
//                       docket: stop['docket'],
//                     );
//                   },
//                 ),
//         ),
//         const SizedBox(height: 20),

//         // 👇👇👇 YOUR TEST CARD HERE
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: _buildTestCard(),
//         ),
//       ],
//     );
//   }
// }

// class PatrolStopCard extends StatelessWidget {
//   final String status;
//   final Color color;
//   final String location;
//   final String description;
//   final String address;
//   final String docket;

//   const PatrolStopCard({
//     Key? key,
//     required this.status,
//     required this.color,
//     required this.location,
//     required this.description,
//     required this.address,
//     required this.docket,
//   }) : super(key: key);

//   void _onDirections(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("Directions pressed")));
//   }

//   void _onMap(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("Map pressed")));
//   }

//   void _onHistory(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("History pressed")));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       elevation: 2,
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Status row with colored bar
//             // Column(
//             //   mainAxisAlignment: MainAxisAlignment.start,
//             //   crossAxisAlignment: CrossAxisAlignment.start,
//             //   children: [
//             //     Container(
//             //       height: MediaQuery.of(context).size.height * 0.1,
//             //       width: MediaQuery.of(context).size.width * 0.03,
//             //       color: Colors.amber,
//             //     ),
//             //   ],
//             // ),
//             Row(
//               children: [
//                 Container(
//                   width: 8,
//                   height: 8,
//                   decoration: BoxDecoration(
//                     color: color,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 Text(
//                   status,
//                   style: TextStyle(fontWeight: FontWeight.bold, color: color),
//                 ),
//                 const Spacer(),
//               ],
//             ),

//             const SizedBox(height: 8),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   location,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text(
//                   'Docket: $docket',
//                   style: const TextStyle(
//                     color: Color(0xFF6B7280),
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 4),

//             Text(description),

//             const SizedBox(height: 2),

//             Text(
//               address,
//               style: const TextStyle(color: Colors.grey, fontSize: 13),
//             ),

//             const SizedBox(height: 8),

//             Row(
//               children: [
//                 Expanded(
//                   child: OutlinedButton.icon(
//                     onPressed: () => _onDirections(context),
//                     icon: const Icon(
//                       TablerIcons.direction_sign,
//                       color: Color(0xFF4B5563),
//                     ),
//                     label: const Text(
//                       'Directions',
//                       style: TextStyle(color: Color(0xFF4B5563)),
//                     ),
//                     style: OutlinedButton.styleFrom(
//                       backgroundColor: const Color(0xFFF3F4F6),
//                       minimumSize: const Size.fromHeight(20),
//                       padding: const EdgeInsets.symmetric(vertical: 8),
//                       side: BorderSide.none,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 10),

//                 Expanded(
//                   child: OutlinedButton.icon(
//                     onPressed: () => _onMap(context),
//                     icon: const Icon(TablerIcons.map, color: Color(0xFF4B5563)),
//                     label: const Text(
//                       'Map',
//                       style: TextStyle(color: Color(0xFF4B5563)),
//                     ),
//                     style: OutlinedButton.styleFrom(
//                       backgroundColor: const Color(0xFFF3F4F6),
//                       minimumSize: const Size.fromHeight(20),
//                       padding: const EdgeInsets.symmetric(vertical: 8),
//                       side: BorderSide.none,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 10),

//                 Expanded(
//                   child: OutlinedButton.icon(
//                     onPressed: () => _onHistory(context),
//                     icon: const Icon(
//                       TablerIcons.history,
//                       color: Color(0xFF4B5563),
//                     ),
//                     label: const Text(
//                       'History',
//                       style: TextStyle(color: Color(0xFF4B5563)),
//                     ),
//                     style: OutlinedButton.styleFrom(
//                       backgroundColor: const Color(0xFFF3F4F6),
//                       minimumSize: const Size.fromHeight(20),
//                       padding: const EdgeInsets.symmetric(vertical: 8),
//                       side: BorderSide.none,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget _buildTestCard() {
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//     elevation: 3,
//     child: IntrinsicHeight(
//       // 👈 This is the key
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             width: 6,
//             decoration: BoxDecoration(
//               color: Colors.amber,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(12),
//                 bottomLeft: Radius.circular(12),
//               ),
//             ),
//           ),

//           const SizedBox(width: 12),

//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "TEST CARD",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text("Editable test area"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:securecy_mobile_app/Screens/sector_checked_screen.dart';
// import 'package:securecy_mobile_app/Screens/qr_scanner_screen.dart';
// import 'package:securecy_mobile_app/Screens/NFC_scanner_screen.dart';

// class PatrolDashboardScreen extends StatefulWidget {
//   const PatrolDashboardScreen({Key? key}) : super(key: key);

//   @override
//   _PatrolDashboardScreenState createState() => _PatrolDashboardScreenState();
// }

// class _PatrolDashboardScreenState extends State<PatrolDashboardScreen> {
//   final TextEditingController _searchController = TextEditingController();

//   // Sample patrol stops data
//   final List<Map<String, dynamic>> patrolStops = [
//     {
//       'status': 'Alarm Response',
//       'color': Color(0xFFB72427),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'In Progress',
//       'color': Color(0xFFD4861B),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Priority Stop',
//       'color': Color(0xFF163496),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Normal Stop',
//       'color': Color(0xFF1766A8),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//     {
//       'status': 'Completed',
//       'color': Color(0xFF178C5B),
//       'location': 'ACME Corp HQ',
//       'description': 'Drop off Abdallah in the office',
//       'address': 'Australia, Melbourne, 2456',
//       'docket': 'BPR-54321',
//     },
//   ];

//   List<Map<String, dynamic>> filteredStops = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredStops = patrolStops;
//     _searchController.addListener(_filterStops);
//   }

//   void _filterStops() {
//     final query = _searchController.text.toLowerCase();
//     setState(() {
//       filteredStops = patrolStops.where((stop) {
//         return stop['location'].toLowerCase().contains(query) ||
//             stop['status'].toLowerCase().contains(query) ||
//             stop['description'].toLowerCase().contains(query) ||
//             stop['docket'].toLowerCase().contains(query);
//       }).toList();
//     });
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   // void _onRefresh() {
//   //   // Add your refresh logic here
//   //   ScaffoldMessenger.of(
//   //     context,
//   //   ).showSnackBar(const SnackBar(content: Text("Refreshed!")));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//           child: ElevatedButton.icon(
//             onPressed: () {},
//             icon: const Icon(
//               TablerIcons.alert_hexagon,
//               color: Color(0xFF1C75BC),
//               size: 20,
//             ),
//             label: const Text(
//               'Off- Location Incident Report',
//               style: TextStyle(color: Color(0xFF111827)),
//             ),
//             style: ElevatedButton.styleFrom(
//               minimumSize: Size(double.infinity, 50),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               backgroundColor: Colors.white,
//             ),
//           ),
//         ),
//         // Buttons Row
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           child: Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: () async {
//                     final result = await Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const QRScannerScreen(),
//                       ),
//                     );

//                     if (result != null) {
//                       print("QR Code: $result");
//                       // TODO: send QR result to API or process it
//                     }
//                   },
//                   icon: const Icon(
//                     TablerIcons.qrcode,
//                     color: Color(0xFF1C75BC),
//                     size: 20,
//                   ),
//                   label: const Text(
//                     'QR Check In',
//                     style: TextStyle(color: Color(0xFF111827)),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: () async {
//                     final nfcResult = await Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => const NFCScannerScreen(),
//                       ),
//                     );

//                     if (nfcResult != null) {
//                       print("NFC Result: $nfcResult");

//                       // TODO: process the NFC check-in result
//                     }
//                   },

//                   icon: SvgPicture.asset(
//                     "assets/images/svgs/lets-icons--nfc 1.svg",
//                     color: Color(0xFF1C75BC),
//                   ),
//                   label: const Text(
//                     'NFC Check In',
//                     style: TextStyle(color: Color(0xFF111827)),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         // Search Bar
//         // Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 16),
//         //   child: TextField(
//         //     controller: _searchController,
//         //     decoration: InputDecoration(
//         //       prefixIcon: const Icon(Icons.search),
//         //       hintText: 'Search for a location',
//         //       border: OutlineInputBorder(
//         //         borderRadius: BorderRadius.circular(8),

//         //       ),

//         //       contentPadding: const EdgeInsets.symmetric(
//         //         horizontal: 16,
//         //         vertical: 14,
//         //       ),
//         //       fillColor: Color(0xFFE5E7EB),
//         //       filled: true,
//         //     ),
//         //   ),
//         // ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Container(
//             // 1. Add BoxDecoration for the subtle shadow and rounded corners
//             decoration: BoxDecoration(
//               color: const Color(
//                 0xFFF3F4F6,
//               ), // Lighter background fill (gray-100)
//               borderRadius: BorderRadius.circular(
//                 10,
//               ), // Match the field's radius
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(
//                     0.05,
//                   ), // Very faint shadow color
//                   spreadRadius: 1,
//                   blurRadius: 4,
//                   offset: const Offset(0, 2), // Subtle lift
//                 ),
//               ],
//             ),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.search, color: Color(0xFF6B7280)),
//                 hintText: 'Search for a location',
//                 hintStyle: const TextStyle(color: Color(0xFF6B7280)),

//                 // 2. Critical: Remove the border line completely in all states
//                 border: InputBorder.none, // Removes the default border
//                 // 4. Content padding adjustment
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal:
//                       16, // Padding is handled by the prefixIcon/hintText alignment
//                   vertical: 14,
//                 ),
//               ),
//             ),
//           ),
//         ),

//         const SizedBox(height: 10),

//         // List of Cards
//         Expanded(
//           child: filteredStops.isEmpty
//               ? const Center(child: Text("No patrol stops found."))
//               : ListView.builder(
//                   itemCount: filteredStops.length,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   itemBuilder: (context, index) {
//                     final stop = filteredStops[index];
//                     return PatrolStopCard(
//                       status: stop['status'],
//                       color: stop['color'],
//                       location: stop['location'],
//                       description: stop['description'],
//                       address: stop['address'],
//                       docket: stop['docket'],
//                     );
//                   },
//                 ),
//         ),
//         const SizedBox(height: 20),

//         // 👇👇👇 YOUR TEST CARD HERE
//         // Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 12),
//         //   child: _buildTestCard(),
//         // ),
//       ],
//     );
//   }
// }

// class PatrolStopCard extends StatelessWidget {
//   final String status;
//   final Color color;
//   final String location;
//   final String description;
//   final String address;
//   final String docket;

//   const PatrolStopCard({
//     Key? key,
//     required this.status,
//     required this.color,
//     required this.location,
//     required this.description,
//     required this.address,
//     required this.docket,
//   }) : super(key: key);

//   void _onDirections(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("Directions pressed")));
//   }

//   void _onMap(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("Map pressed")));
//   }

//   void _onHistory(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text("History pressed")));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(8),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (_) => const SectorCheckedScreen()),
//         );
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         margin: const EdgeInsets.symmetric(vertical: 8),

//         elevation: 2,
//         color: Colors.white,
//         child: IntrinsicHeight(
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 width: 12,
//                 decoration: BoxDecoration(
//                   color: color,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(8),
//                     bottomLeft: Radius.circular(8),
//                   ),
//                 ),
//               ),

//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             width: 8,
//                             height: 8,
//                             decoration: BoxDecoration(
//                               color: color,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           const SizedBox(width: 4),
//                           Text(
//                             status,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: color,
//                             ),
//                           ),
//                           const Spacer(),
//                         ],
//                       ),

//                       const SizedBox(height: 8),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             location,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                           Text(
//                             'Docket: $docket',
//                             style: const TextStyle(
//                               color: Color(0xFF6B7280),
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 4),

//                       Text(description),

//                       const SizedBox(height: 2),

//                       Text(
//                         address,
//                         style: const TextStyle(
//                           color: Colors.grey,
//                           fontSize: 13,
//                         ),
//                       ),

//                       const SizedBox(height: 8),

//                       Row(
//                         children: [
//                           Expanded(
//                             child: OutlinedButton.icon(
//                               onPressed: () => _onDirections(context),
//                               icon: const Icon(
//                                 TablerIcons.direction_sign,
//                                 color: Color(0xFF4B5563),
//                               ),
//                               label: const Text(
//                                 'Directions',
//                                 style: TextStyle(color: Color(0xFF4B5563)),
//                               ),
//                               style: OutlinedButton.styleFrom(
//                                 backgroundColor: const Color(0xFFF3F4F6),
//                                 minimumSize: const Size.fromHeight(20),
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 8,
//                                 ),
//                                 side: BorderSide.none,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               ),
//                             ),
//                           ),

//                           const SizedBox(width: 10),

//                           Expanded(
//                             child: OutlinedButton.icon(
//                               onPressed: () => _onMap(context),
//                               icon: const Icon(
//                                 TablerIcons.map,
//                                 color: Color(0xFF4B5563),
//                               ),
//                               label: const Text(
//                                 'Map',
//                                 style: TextStyle(color: Color(0xFF4B5563)),
//                               ),
//                               style: OutlinedButton.styleFrom(
//                                 backgroundColor: const Color(0xFFF3F4F6),
//                                 minimumSize: const Size.fromHeight(20),
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 8,
//                                 ),
//                                 side: BorderSide.none,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               ),
//                             ),
//                           ),

//                           const SizedBox(width: 10),

//                           Expanded(
//                             child: OutlinedButton.icon(
//                               onPressed: () => _onHistory(context),
//                               icon: const Icon(
//                                 TablerIcons.history,
//                                 color: Color(0xFF4B5563),
//                               ),
//                               label: const Text(
//                                 'History',
//                                 style: TextStyle(color: Color(0xFF4B5563)),
//                               ),
//                               style: OutlinedButton.styleFrom(
//                                 backgroundColor: const Color(0xFFF3F4F6),
//                                 minimumSize: const Size.fromHeight(20),
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 8,
//                                 ),
//                                 side: BorderSide.none,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Widget _buildTestCard() {
// //   return Card(
// //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //     elevation: 3,
// //     child: IntrinsicHeight(
// //       // 👈 This is the key
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.stretch,
// //         children: [
// //           Container(
// //             width: 6,
// //             decoration: BoxDecoration(
// //               color: Colors.amber,
// //               borderRadius: const BorderRadius.only(
// //                 topLeft: Radius.circular(12),
// //                 bottomLeft: Radius.circular(12),
// //               ),
// //             ),
// //           ),

// //           const SizedBox(width: 12),

// //           Expanded(
// //             child: Padding(
// //               padding: const EdgeInsets.all(16),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: const [
// //                   Text(
// //                     "TEST CARD",
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.blueGrey,
// //                     ),
// //                   ),
// //                   SizedBox(height: 10),
// //                   Text("Editable test area"),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     ),
// //   );
// // }
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:securecy_mobile_app/Screens/sector_checked_screen.dart';
import 'package:securecy_mobile_app/Screens/qr_scanner_screen.dart';
import 'package:securecy_mobile_app/Screens/NFC_scanner_screen.dart';

class PatrolDashboardScreen extends StatefulWidget {
  const PatrolDashboardScreen({Key? key}) : super(key: key);

  @override
  _PatrolDashboardScreenState createState() => _PatrolDashboardScreenState();
}

class _PatrolDashboardScreenState extends State<PatrolDashboardScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Sample patrol stops data
  final List<Map<String, dynamic>> patrolStops = [
    {
      'status': 'Alarm Response',
      'color': Color(0xFFB72427),
      'location': 'ACME Corp HQ',
      'description': 'Drop off Abdallah in the office',
      'address': 'Australia, Melbourne, 2456',
      'docket': 'BPR-54321',
    },
    {
      'status': 'In Progress',
      'color': Color(0xFFD4861B),
      'location': 'ACME Corp HQ',
      'description': 'Drop off Abdallah in the office',
      'address': 'Australia, Melbourne, 2456',
      'docket': 'BPR-54321',
    },
    for (int i = 1; i <= 5; i++)
      {
        'status': 'Priority Stop',
        'color': Color(0xFF163496),
        'location': 'ACME Corp HQ',
        'description': 'Drop off Abdallah in the office',
        'address': 'Australia, Melbourne, 2456',
        'docket': 'BPR-54321',
      },
    for (int i = 1; i <= 10; i++)
      {
        'status': 'Normal Stop',
        'color': Color(0xFF1766A8),
        'location': 'ACME Corp HQ',
        'description': 'Drop off Abdallah in the office',
        'address': 'Australia, Melbourne, 2456',
        'docket': 'BPR-54321',
      },
    for (int i = 1; i <= 20; i++)
      {
        'status': 'Completed',
        'color': Color(0xFF178C5B),
        'location': 'ACME Corp HQ',
        'description': 'Drop off Abdallah in the office',
        'address': 'Australia, Melbourne, 2456',
        'docket': 'BPR-54321',
      },
  ];

  List<Map<String, dynamic>> filteredStops = [];

  @override
  void initState() {
    super.initState();
    filteredStops = patrolStops;
    _searchController.addListener(_filterStops);
  }

  void _filterStops() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredStops = patrolStops.where((stop) {
        return stop['location'].toLowerCase().contains(query) ||
            stop['status'].toLowerCase().contains(query) ||
            stop['description'].toLowerCase().contains(query) ||
            stop['docket'].toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // void _onRefresh() {
  //   // Add your refresh logic here
  //   ScaffoldMessenger.of(
  //     context,
  //   ).showSnackBar(const SnackBar(content: Text("Refreshed!")));
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                TablerIcons.alert_hexagon,
                color: Color(0xFF1C75BC),
                size: 20,
              ),
              label: const Text(
                'Off- Location Incident Report',
                style: TextStyle(color: Color(0xFF111827)),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          // Buttons Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QRScannerScreen(),
                        ),
                      );

                      if (result != null) {
                        print("QR Code: $result");
                        // TODO: send QR result to API or process it
                      }
                    },
                    icon: const Icon(
                      TablerIcons.qrcode,
                      color: Color(0xFF1C75BC),
                      size: 20,
                    ),
                    label: const Text(
                      'QR Check In',
                      style: TextStyle(color: Color(0xFF111827)),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final nfcResult = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const NFCScannerScreen(),
                        ),
                      );

                      if (nfcResult != null) {
                        print("NFC Result: $nfcResult");

                        // TODO: process the NFC check-in result
                      }
                    },

                    icon: SvgPicture.asset(
                      "assets/images/svgs/lets-icons--nfc 1.svg",
                      color: Color(0xFF1C75BC),
                    ),
                    label: const Text(
                      'NFC Check In',
                      style: TextStyle(color: Color(0xFF111827)),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Search Bar
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //   child: TextField(
          //     controller: _searchController,
          //     decoration: InputDecoration(
          //       prefixIcon: const Icon(Icons.search),
          //       hintText: 'Search for a location',
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(8),

          //       ),

          //       contentPadding: const EdgeInsets.symmetric(
          //         horizontal: 16,
          //         vertical: 14,
          //       ),
          //       fillColor: Color(0xFFE5E7EB),
          //       filled: true,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              // 1. Add BoxDecoration for the subtle shadow and rounded corners
              decoration: BoxDecoration(
                color: const Color(
                  0xFFF3F4F6,
                ), // Lighter background fill (gray-100)
                borderRadius: BorderRadius.circular(
                  10,
                ), // Match the field's radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                      0.05,
                    ), // Very faint shadow color
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2), // Subtle lift
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF6B7280),
                  ),
                  hintText: 'Search for a location',
                  hintStyle: const TextStyle(color: Color(0xFF6B7280)),

                  // 2. Critical: Remove the border line completely in all states
                  border: InputBorder.none, // Removes the default border
                  // 4. Content padding adjustment
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal:
                        16, // Padding is handled by the prefixIcon/hintText alignment
                    vertical: 14,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: filteredStops.isEmpty
                  ? [
                      const SizedBox(height: 40),
                      const Center(child: Text("No patrol stops found.")),
                    ]
                  : filteredStops
                        .map(
                          (stop) => PatrolStopCard(
                            status: stop['status'],
                            color: stop['color'],
                            location: stop['location'],
                            description: stop['description'],
                            address: stop['address'],
                            docket: stop['docket'],
                          ),
                        )
                        .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class PatrolStopCard extends StatelessWidget {
  final String status;
  final Color color;
  final String location;
  final String description;
  final String address;
  final String docket;

  const PatrolStopCard({
    Key? key,
    required this.status,
    required this.color,
    required this.location,
    required this.description,
    required this.address,
    required this.docket,
  }) : super(key: key);

  void _onDirections(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Directions pressed")));
  }

  void _onMap(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Map pressed")));
  }

  void _onHistory(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("History pressed")));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SectorCheckedScreen()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 8),

        elevation: 2,
        color: Colors.white,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 12,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            status,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            location,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Docket: $docket',
                            style: const TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 4),

                      Text(description),

                      const SizedBox(height: 2),

                      Text(
                        address,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () => _onDirections(context),
                              icon: const Icon(
                                TablerIcons.direction_sign,
                                color: Color(0xFF4B5563),
                              ),
                              label: const Text(
                                'Directions',
                                style: TextStyle(color: Color(0xFF4B5563)),
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF3F4F6),
                                minimumSize: const Size.fromHeight(20),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () => _onMap(context),
                              icon: const Icon(
                                TablerIcons.map,
                                color: Color(0xFF4B5563),
                              ),
                              label: const Text(
                                'Map',
                                style: TextStyle(color: Color(0xFF4B5563)),
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF3F4F6),
                                minimumSize: const Size.fromHeight(20),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () => _onHistory(context),
                              icon: const Icon(
                                TablerIcons.history,
                                color: Color(0xFF4B5563),
                              ),
                              label: const Text(
                                'History',
                                style: TextStyle(color: Color(0xFF4B5563)),
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF3F4F6),
                                minimumSize: const Size.fromHeight(20),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _buildTestCard() {
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//     elevation: 3,
//     child: IntrinsicHeight(
//       // 👈 This is the key
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             width: 6,
//             decoration: BoxDecoration(
//               color: Colors.amber,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(12),
//                 bottomLeft: Radius.circular(12),
//               ),
//             ),
//           ),

//           const SizedBox(width: 12),

//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "TEST CARD",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text("Editable test area"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
