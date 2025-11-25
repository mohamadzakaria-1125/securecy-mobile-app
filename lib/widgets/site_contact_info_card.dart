// // // import 'package:flutter/material.dart';

// // // class SiteContactInfoCard extends StatelessWidget {
// // //   final String address;
// // //   final String contactName;
// // //   final String phoneNumber;

// // //   const SiteContactInfoCard({
// // //     super.key,
// // //     required this.address,
// // //     required this.contactName,
// // //     required this.phoneNumber,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       shape: RoundedRectangleBorder(
// // //         borderRadius: BorderRadius.circular(16),
// // //       ),
// // //       elevation: 3,
// // //       child: ExpansionTile(
// // //         initiallyExpanded: true,
// // //         title: Row(
// // //           children: [
// // //             const Icon(Icons.info_outline, color: Colors.blueGrey),
// // //             const SizedBox(width: 8),
// // //             const Text(
// // //               "Site & Contact Info",
// // //               style: TextStyle(
// // //                 fontSize: 16,
// // //                 fontWeight: FontWeight.w600,
// // //               ),
// // //             )
// // //           ],
// // //         ),
// // //         childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// // //         children: [
// // //           _infoRow(
// // //             icon: Icons.location_on_outlined,
// // //             label: "Address",
// // //             value: address,
// // //           ),
// // //           const Divider(),
// // //           _infoRow(
// // //             icon: Icons.person_outline,
// // //             label: "Contact",
// // //             value: contactName,
// // //           ),
// // //           const Divider(),
// // //           _infoRow(
// // //             icon: Icons.phone_outlined,
// // //             label: "Phone Number",
// // //             value: phoneNumber,
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _infoRow({
// // //     required IconData icon,
// // //     required String label,
// // //     required String value,
// // //   }) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 8),
// // //       child: Row(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           _circleIcon(icon),
// // //           const SizedBox(width: 12),
// // //           Expanded(
// // //             child: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 Text(
// // //                   label,
// // //                   style: TextStyle(
// // //                     fontSize: 12,
// // //                     color: Colors.grey.shade600,
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 4),
// // //                 Text(
// // //                   value,
// // //                   style: const TextStyle(
// // //                     fontSize: 15,
// // //                     fontWeight: FontWeight.w600,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _circleIcon(IconData icon) {
// // //     return Container(
// // //       padding: const EdgeInsets.all(10),
// // //       decoration: BoxDecoration(
// // //         color: Colors.blue.shade50,
// // //         shape: BoxShape.circle,
// // //       ),
// // //       child: Icon(
// // //         icon,
// // //         color: Colors.blue.shade600,
// // //         size: 20,
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';

// // class SiteContactInfoCard extends StatelessWidget {
// //   final String address;
// //   final String contactName;
// //   final String phoneNumber;

// //   const SiteContactInfoCard({
// //     super.key,
// //     required this.address,
// //     required this.contactName,
// //     required this.phoneNumber,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     // The total horizontal space before the text starts is 16px (childrenPadding) + 40px (icon container) + 12px (SizedBox) = 68px
// //     // The indent property for the Divider must account for the space *within* the childrenPadding area.
// //     const double dividerIndent =
// //         52.0; // 40px (icon container width) + 12px (SizedBox width)

// //     return Card(
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// //       elevation: 3,
// //       child: ExpansionTile(
// //         initiallyExpanded: true,
// //         title: Row(
// //           children: [
// //             const Icon(Icons.info_outline, color: Colors.blueGrey),
// //             const SizedBox(width: 8),
// //             const Text(
// //               "Site & Contact Info",
// //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
// //             ),
// //           ],
// //         ),
// //         // This padding applies to all children below the title
// //         childrenPadding: const EdgeInsets.symmetric(
// //           horizontal: 16,
// //           vertical: 8,
// //         ),
// //         children: [
// //           _infoRow(
// //             icon: Icons.location_on_outlined,
// //             label: "Address",
// //             value: address,
// //           ),
// //           // Use indent and endIndent to align with the start of the text content
// //           const Divider(indent: dividerIndent, endIndent: 0),
// //           _infoRow(
// //             icon: Icons.person_outline,
// //             label: "Contact",
// //             value: contactName,
// //           ),
// //           // Use indent and endIndent to align with the start of the text content
// //           const Divider(indent: dividerIndent, endIndent: 0),
// //           _infoRow(
// //             icon: Icons.phone_outlined,
// //             label: "Phone Number",
// //             value: phoneNumber,
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _infoRow({
// //     required IconData icon,
// //     required String label,
// //     required String value,
// //   }) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 8),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           _circleIcon(icon),
// //           const SizedBox(width: 12),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   label,
// //                   style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
// //                 ),
// //                 const SizedBox(height: 4),
// //                 Text(
// //                   value,
// //                   style: const TextStyle(
// //                     fontSize: 15,
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _circleIcon(IconData icon) {
// //     return Container(
// //       padding: const EdgeInsets.all(10),
// //       decoration: BoxDecoration(
// //         color: Colors.blue.shade50,
// //         shape: BoxShape.circle,
// //       ),
// //       child: Icon(icon, color: Colors.blue.shade600, size: 20),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class SiteContactInfoCard extends StatelessWidget {
//   final String address;
//   final String contactName;
//   final String phoneNumber;

//   const SiteContactInfoCard({
//     super.key,
//     required this.address,
//     required this.contactName,
//     required this.phoneNumber,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 3,
//       child: Column(
//         children: [
//           ExpansionTile(
//             initiallyExpanded: true,
//             tilePadding: const EdgeInsets.symmetric(horizontal: 16),
//             title: Row(
//               children: const [
//                 Icon(Icons.info_outline, color: Colors.blueGrey),
//                 SizedBox(width: 8),
//                 Text(
//                   "Site & Contact Info",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             // The children property now contains only ONE widget: a Column
//             children: [
//               _buildInfoSection(), // All info rows and dividers are managed here
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // ✅ NEW METHOD: Consolidates all info rows and dividers in one Column
//   Widget _buildInfoSection() {
//     // Use a Column to manage layout and dividers manually.
//     // The Divider widget now has consistent properties.
//     return Column(
//       children: [
//         Divider(color: Colors.grey.shade300, thickness: 1.0, height: 1.0),

//         _infoRow(
//           icon: Icons.location_on_outlined,
//           label: "Address",
//           value: address,
//         ),
//         Divider(color: Colors.grey.shade300, thickness: 1.0, height: 1.0),

//         _infoRow(
//           icon: Icons.person_outline,
//           label: "Contact",
//           value: contactName,
//         ),
//         Divider(color: Colors.grey.shade300, thickness: 1.0, height: 1.0),

//         _infoRow(
//           icon: Icons.phone_outlined,
//           label: "Phone Number",
//           value: phoneNumber,
//         ),
//       ],
//     );
//   }

//   // FIXED HEIGHT ROW → identical vertical spacing
//   Widget _infoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//   }) {
//     return Container(
//       height: 72, // ALL ROWS SAME HEIGHT
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         children: [
//           _circleIcon(icon),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center, // perfect centering
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _circleIcon(IconData icon) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         shape: BoxShape.circle,
//       ),
//       child: Icon(icon, color: Colors.blue.shade600, size: 20),
//     );
//   }
// }
