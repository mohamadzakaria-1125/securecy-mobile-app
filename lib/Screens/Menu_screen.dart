// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class MenuPage extends StatefulWidget {
//   const MenuPage({super.key});

//   @override
//   State<MenuPage> createState() => _MenuPageState();
// }

// class _MenuPageState extends State<MenuPage> {
//   int selectedIndex = 0; // No selection initially

//   final menuItems = [
//     {'title': 'Dashboard', 'icon': FontAwesomeIcons.gaugeHigh},
//     {'title': 'Unconfirmed Shifts', 'icon': FontAwesomeIcons.circleQuestion},
//     {'title': 'Upcoming Shifts', 'icon': FontAwesomeIcons.handPointRight},
//     {'title': 'Past Shifts', 'icon': FontAwesomeIcons.handPointLeft},
//     {'title': 'Request a Blockout', 'icon': Icons.block_outlined},
//     {'title': 'Show Master Licence', 'icon': FontAwesomeIcons.certificate},
//     {'title': 'Your Documents', 'icon': FontAwesomeIcons.file},
//     {'title': 'Your Incident Reports', 'icon': FontAwesomeIcons.file},
//     {'title': 'Logout', 'icon': FontAwesomeIcons.rightFromBracket},
//     {
//       'title': 'IOS build Date 19 March 2025',
//       'icon': FontAwesomeIcons.codeBranch,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Menu'),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         foregroundColor: Colors.black,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.separated(
//               itemCount: menuItems.length,
//               separatorBuilder: (_, __) => const Divider(height: 0),
//               itemBuilder: (context, index) {
//                 final item = menuItems[index];
//                 final isSelected = selectedIndex == index;

//                 return InkWell(
//                   onTap: () {
//                     setState(() => selectedIndex = index);
//                     // Add navigation logic here
//                   },
//                   child: Container(
//                     color: Colors.white,
//                     child: Row(
//                       children: [
//                         // Left blue indicator
//                         AnimatedContainer(
//                           duration: const Duration(milliseconds: 200),
//                           width: 4,
//                           height: 60,
//                           color: isSelected ? Colors.blue : Colors.transparent,
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: ListTile(
//                             leading: Icon(
//                               item['icon'] as IconData,
//                               color: isSelected
//                                   ? Colors.blue
//                                   : Colors.grey[600],
//                             ),
//                             title: Text(
//                               item['title'] as String,
//                               style: TextStyle(
//                                 color: isSelected ? Colors.blue : Colors.black,
//                                 fontWeight: isSelected
//                                     ? FontWeight.w600
//                                     : FontWeight.normal,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedIndex = -1; // No selection initially

  final menuItems = [
    {'title': 'Dashboard', 'icon': FontAwesomeIcons.gaugeHigh},
    {'title': 'Unconfirmed Shifts', 'icon': FontAwesomeIcons.circleQuestion},
    {'title': 'Upcoming Shifts', 'icon': FontAwesomeIcons.handPointRight},
    {'title': 'Past Shifts', 'icon': FontAwesomeIcons.handPointLeft},
    {'title': 'Request a Blockout', 'icon': Icons.block_outlined},
    {'title': 'Show Master Licence', 'icon': FontAwesomeIcons.certificate},
    {'title': 'Your Documents', 'icon': FontAwesomeIcons.file},
    {'title': 'Your Incident Reports', 'icon': FontAwesomeIcons.file},
    {'title': 'Logout', 'icon': FontAwesomeIcons.rightFromBracket},
    {
      'title': 'IOS build Date 19 March 2025',
      'icon': FontAwesomeIcons.codeBranch,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                final isSelected = selectedIndex == index;

                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() => selectedIndex = index);
                        // Add navigation logic here
                      },
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            // Left blue indicator
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: 4,
                              height: 60,
                              color: isSelected
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(
                                  item['icon'] as IconData,
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.grey[600],
                                ),
                                title: Text(
                                  item['title'] as String,
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.blue
                                        : Colors.black,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 0),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
