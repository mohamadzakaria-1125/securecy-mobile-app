// import 'package:flutter/material.dart';
// import 'drawer_item.dart';

// class AppDrawer extends StatelessWidget {
//   final int selectedIndex;
//   final ValueChanged<int> onItemSelected;

//   const AppDrawer({
//     super.key,
//     required this.selectedIndex,
//     required this.onItemSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
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
//             // Profile header
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   const CircleAvatar(
//                     radius: 22,
//                     backgroundColor: Color(0xFFC9E2F5),
//                     child: Text("ZR",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                   const SizedBox(width: 12),
//                   const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Ziad Raad",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 16)),
//                       Text("Basirax Team", style: TextStyle(color: Colors.grey))
//                     ],
//                   )
//                 ],
//               ),
//             ),

//             const Divider(),

//             DrawerItem(
//               index: 0,
//               selectedIndex: selectedIndex,
//               title: "Home Page",
//               icon: Icons.home_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 1,
//               selectedIndex: selectedIndex,
//               title: "Upcoming Shifts",
//               icon: Icons.schedule_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 2,
//               selectedIndex: selectedIndex,
//               title: "Unaccepted Shifts",
//               icon: Icons.pending_actions_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 3,
//               selectedIndex: selectedIndex,
//               title: "Past Shifts",
//               icon: Icons.history_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 4,
//               selectedIndex: selectedIndex,
//               title: "Request a Blockout",
//               icon: Icons.block_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 5,
//               selectedIndex: selectedIndex,
//               title: "Show Master Licence",
//               icon: Icons.badge_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 6,
//               selectedIndex: selectedIndex,
//               title: "Your Documents",
//               icon: Icons.insert_drive_file_outlined,
//               onTap: onItemSelected,
//             ),
//             DrawerItem(
//               index: 7,
//               selectedIndex: selectedIndex,
//               title: "Your Incident Report",
//               icon: Icons.report_outlined,
//               onTap: onItemSelected,
//             ),

//             const Spacer(),
//             const Divider(),

//             ListTile(
//               leading: const Icon(Icons.logout, color: Colors.red),
//               title: const Text("Log Out",
//                   style:
//                       TextStyle(color: Colors.red, fontWeight: FontWeight.w500)),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
