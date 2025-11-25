// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:securecy_mobile_app/Screens/login_screen.dart';

// final _secureStorage = const FlutterSecureStorage();

// class CustomDrawer extends StatefulWidget {
//   final String selectedMenu;
//   final ValueChanged<String> onMenuSelected;

//   const CustomDrawer({
//     Key? key,
//     required this.selectedMenu,
//     required this.onMenuSelected,
//   }) : super(key: key);

//   @override
//   State<CustomDrawer> createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {

//   Widget _drawerItem(dynamic icon, String title) {
//     double itemWidth = MediaQuery.of(context).size.width * 0.60;
//     final bool isSelected = widget.selectedMenu == title;
//     return Column(
//       children: [
//         Center(
//           child: GestureDetector(
//             onTap: () {
//               widget.onMenuSelected(title);
//               Navigator.of(context).pop();
//             },
//             child: Container(
//               width: itemWidth,
//               height: MediaQuery.of(context).size.height * 0.048,
//               decoration: BoxDecoration(
//                 color: isSelected ? const Color(0xFFC9E2F5) : Colors.transparent,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   const SizedBox(width: 14),
//                   icon is String
//                       ? SvgPicture.asset(
//                           icon,
//                           width: 22,
//                           height: 22,
//                           color: isSelected ? const Color(0xFF1C75BC) : Colors.black54,
//                         )
//                       : Icon(
//                           icon,
//                           size: 22,
//                           color: isSelected ? const Color(0xFF1C75BC) : Colors.black54,
//                         ),
//                   const SizedBox(width: 7),
//                   Expanded(
//                     child: Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
//                         color: isSelected ? const Color(0xFF1C75BC) : Colors.black87,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 10),
//       ],
//     );
//   }

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
//             _drawerItem(TablerIcons.home, "Home Page"),
//             _drawerItem("assets/images/svgs/calendar-custom.svg", "Upcoming Shifts"),
//             _drawerItem(TablerIcons.calendar_clock, "Unaccepted Shifts"),
//             _drawerItem("assets/images/svgs/calendar-custom (1).svg", "Past Shifts"),
//             _drawerItem(TablerIcons.calendar_off, "Request a Blockout"),
//             _drawerItem("assets/images/svgs/police-custom.svg", "Show Master Licence"),
//             _drawerItem(TablerIcons.file_description, "Your Documents"),
//             _drawerItem(TablerIcons.alert_hexagon, "Your Incident Report"),

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
//               onTap: () async {
//                 bool? confirm = await showDialog<bool>(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: const Text("Confirm Logout"),
//                     content: const Text("Are you sure you want to log out?"),
//                     actions: [
//                       TextButton(
//                         onPressed: () => Navigator.of(context).pop(false),
//                         child: const Text("Cancel"),
//                       ),
//                       TextButton(
//                         onPressed: () => Navigator.of(context).pop(true),
//                         child: const Text(
//                           "Log Out",
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );

//                 if (confirm == true) {
//                   await _secureStorage.delete(key: 'username');
//                   await _secureStorage.delete(key: 'password');

//                   Navigator.of(context).pushAndRemoveUntil(
//                     MaterialPageRoute(builder: (context) => const LoginScreen()),
//                     (route) => false,
//                   );
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//  Widget _buildDrawer(BuildContext context) {
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
//             _drawerItem(TablerIcons.home, "Home Page"),
//             _drawerItem(
//               "assets/images/svgs/calendar-custom.svg",
//               "Upcoming Shifts",
//             ),
//             _drawerItem(TablerIcons.calendar_clock, "Unaccepted Shifts"),
//             _drawerItem(
//               "assets/images/svgs/calendar-custom (1).svg",
//               "Past Shifts",
//             ),
//             _drawerItem(TablerIcons.calendar_off, "Request a Blockout"),
//             _drawerItem(
//               "assets/images/svgs/police-custom.svg",
//               "Show Master Licence",
//             ),
//             _drawerItem(TablerIcons.file_description, "Your Documents"),
//             _drawerItem(TablerIcons.alert_hexagon, "Your Incident Report"),

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
//               // onTap: () async {
//               //   // 1️⃣ Delete saved credentials
//               //   await _secureStorage.delete(key: 'username');
//               //   await _secureStorage.delete(key: 'password');

//               //   // 2️⃣ Navigate to login screen and remove all previous routes
//               //   Navigator.of(context).pushAndRemoveUntil(
//               //     MaterialPageRoute(builder: (context) => const LoginScreen()),
//               //     (route) => false,
//               //   );
//               // },
//               onTap: () async {
//                 // Show confirmation dialog
//                 bool? confirm = await showDialog<bool>(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: const Text("Confirm Logout"),
//                     content: const Text("Are you sure you want to log out?"),
//                     actions: [
//                       TextButton(
//                         onPressed: () => Navigator.of(context).pop(false),
//                         child: const Text("Cancel"),
//                       ),
//                       TextButton(
//                         onPressed: () => Navigator.of(context).pop(true),
//                         child: const Text(
//                           "Log Out",
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );

//                 // If the user confirmed
//                 if (confirm == true) {
//                   // Delete saved credentials
//                   await _secureStorage.delete(key: 'username');
//                   await _secureStorage.delete(key: 'password');

//                   // Navigate to LoginScreen and remove all previous routes
//                   Navigator.of(context).pushAndRemoveUntil(
//                     MaterialPageRoute(
//                       builder: (context) => const LoginScreen(),
//                     ),
//                     (route) => false,
//                   );
//                 }
//               },
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
//   Widget _drawerItem(dynamic icon, String title) {
//     double itemWidth = MediaQuery.of(context).size.width * 0.60; // 80%
//     final bool isSelected = selectedMenu == title;
//     return Column(
//       children: [
//         Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedMenu = title;
//               });
//               Navigator.of(context).pop();
//             },
//             child: Container(
//               width: itemWidth,
//               height:
//                   MediaQuery.of(context).size.height *
//                   0.048, // fixed height like screenshot
//               decoration: BoxDecoration(
//                 color: isSelected
//                     ? const Color(0xFFC9E2F5)
//                     : Colors.transparent,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   const SizedBox(width: 14),

//                   // Icon(
//                   //   icon,
//                   //   size: 22,
//                   //   color: isSelected
//                   //       ? const Color(0xFF1C75BC)
//                   //       : Colors.black54,
//                   // ),
//                   icon is String
//                       ? SvgPicture.asset(
//                           icon,
//                           width: 22,
//                           height: 22,
//                           color: isSelected
//                               ? const Color(0xFF1C75BC)
//                               : Colors.black54,
//                         )
//                       : Icon(
//                           icon,
//                           size: 22,
//                           color: isSelected
//                               ? const Color(0xFF1C75BC)
//                               : Colors.black54,
//                         ),
//                   const SizedBox(width: 7),

//                   Expanded(
//                     child: Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: isSelected
//                             ? FontWeight.bold
//                             : FontWeight.w500,
//                         color: isSelected
//                             ? const Color(0xFF1C75BC)
//                             : Colors.black87,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 10), // spacing
//       ],
//     );
//   }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../Screens/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  final String selectedMenu;
  final ValueChanged<String> onMenuSelected;

  const CustomDrawer({
    Key? key,
    required this.selectedMenu,
    required this.onMenuSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            _buildProfileSection(),
            const Divider(),
            _buildMenuList(context),
            const Spacer(),
            const Divider(),
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  // -------------------------------------------------------------
  //  PROFILE SECTION
  // -------------------------------------------------------------
  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFFC9E2F5),
            child: Text(
              "ZR",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Ziad Raad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text("Basirax Team", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  // -------------------------------------------------------------
  //  DRAWER MENU ITEMS
  // -------------------------------------------------------------
  Widget _buildMenuList(BuildContext context) {
    return Column(
      children: [
        _drawerItem(context, TablerIcons.home, "Home Page"),
        _drawerItem(
          context,
          "assets/images/svgs/calendar-custom.svg",
          "Upcoming Shifts",
        ),
        _drawerItem(context, TablerIcons.calendar_clock, "Unaccepted Shifts"),
        _drawerItem(
          context,
          "assets/images/svgs/calendar-custom (1).svg",
          "Past Shifts",
        ),
        _drawerItem(context, TablerIcons.calendar_off, "Request a Blockout"),
        _drawerItem(
          context,
          "assets/images/svgs/police-custom.svg",
          "Show Master Licence",
        ),
        _drawerItem(context, TablerIcons.file_description, "Your Documents"),
        _drawerItem(context, TablerIcons.alert_hexagon, "Your Incident Report"),
      ],
    );
  }

  // -------------------------------------------------------------
  //  LOGOUT BUTTON
  // -------------------------------------------------------------
  Widget _buildLogoutButton(BuildContext context) {
    const storage = FlutterSecureStorage();

    return ListTile(
      leading: const Icon(Icons.logout, color: Colors.red),
      title: const Text(
        "Log Out",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
      ),
      onTap: () async {
        bool? confirm = await showDialog<bool>(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text("Confirm Logout"),
            content: const Text("Are you sure you want to log out?"),
            actions: [
              TextButton(
                child: const Text("Cancel"),
                onPressed: () => Navigator.pop(context, false),
              ),
              TextButton(
                child: const Text(
                  "Log Out",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () => Navigator.pop(context, true),
              ),
            ],
          ),
        );

        if (confirm == true) {
          await storage.delete(key: "username");
          await storage.delete(key: "password");

          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const LoginScreen()),
            (route) => false,
          );
        }
      },
    );
  }

  // -------------------------------------------------------------
  //  REUSABLE DRAWER ITEM
  // -------------------------------------------------------------
  Widget _drawerItem(BuildContext context, dynamic icon, String title) {
    final bool isSelected = selectedMenu == title;

    return GestureDetector(
      onTap: () {
        onMenuSelected(title); // notify parent
        Navigator.pop(context); // close drawer
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        height: 45,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFC9E2F5) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 14),
            icon is String
                ? SvgPicture.asset(
                    icon,
                    width: 22,
                    height: 22,
                    color: isSelected
                        ? const Color(0xFF1C75BC)
                        : Colors.black54,
                  )
                : Icon(
                    icon,
                    size: 22,
                    color: isSelected
                        ? const Color(0xFF1C75BC)
                        : Colors.black54,
                  ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? const Color(0xFF1C75BC) : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
