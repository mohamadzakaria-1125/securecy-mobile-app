// import 'package:flutter/material.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

// class SectorCheckedScreen extends StatelessWidget {
//   const SectorCheckedScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF3F6FA),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(TablerIcons.arrow_left),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Sector Check In",
//           style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
//         ),
//         actions: [
//           IconButton(icon: const Icon(TablerIcons.refresh), onPressed: () {}),
//         ],
//       ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // DOCKET
//             const Text(
//               "Docket#130234",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),

//             const SizedBox(height: 4),

//             // STATUS
//             const Text(
//               "Compliance",
//               style: TextStyle(
//                 color: Color(0xFF03A65A),
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 4),
//             const Text(
//               "Last Checked in at 09:41 AM",
//               style: TextStyle(color: Colors.black54, fontSize: 13),
//             ),

//             const SizedBox(height: 20),

//             // LOCATION NOTES BUTTON
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 15),
//               decoration: BoxDecoration(
//                 color: const Color(0xFFC9E2F5),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Text(
//                   "Location Notes",
//                   style: TextStyle(
//                     color: Color(0xFF1766A8),
//                     fontSize: 17,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             // ------------ EXPANSION TILES -------------------------
//             // _buildTile(
//             //   icon: TablerIcons.clipboard_text,
//             //   title: "Instructions",
//             //   children: const [
//             //     Padding(
//             //       padding: EdgeInsets.all(12.0),
//             //       child: Text(
//             //         "Here are the instructions for this sector...",
//             //         style: TextStyle(fontSize: 15),
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             _buildTile(
//               icon: TablerIcons.clipboard_text,

//               title: "Instructions",
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//                   child: Divider(
//                     height: 1,
//                     thickness: 1,
//                     color: Color(0xFFE5E7EB),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Header
//                       Text(
//                         "ASLAM - MULTIPLE ALARMS",
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),

//                       SizedBox(height: 10),

//                       // Zones
//                       Text(
//                         "ZONE(S): B11: Z03 E BLK CLASSRM\n"
//                         "ER1008 BLOCK: EB12: Z02 H BLK ENTRY DOORS\n"
//                         "BLOCK: HB06: Z02 D BLK CLASSRM DR1014\n"
//                         "BLOCK: D Wilons",
//                         style: TextStyle(height: 1.4, fontSize: 15),
//                       ),

//                       SizedBox(height: 10),

//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Color(0xFFE5E7EB),
//                       ),
//                       SizedBox(height: 15),
//                       // Bullet 1
//                       Text(
//                         "- In the event that the exit gate fails to open automatically, "
//                         "you can manually activate it by switching the motor switch located "
//                         "at the exit gate (see attached photo) to the ON position.",
//                         style: TextStyle(height: 1.5, fontSize: 15),
//                       ),

//                       SizedBox(height: 10),

//                       // Bullet 2
//                       Text(
//                         "- We can still override the entry gate by using Master key as "
//                         "previously communicated within the group.",
//                         style: TextStyle(height: 1.5, fontSize: 15),
//                       ),

//                       SizedBox(height: 10),

//                       // Bullet 3
//                       Text(
//                         "- Plans are underway to replace the pedestrian gate lock with "
//                         "standardized locks, enabling access via the Master key.",
//                         style: TextStyle(height: 1.5, fontSize: 15),
//                       ),

//                       SizedBox(height: 10),

//                       // Bullet 4
//                       Text(
//                         "- The functionality of all school internal keys obtained from the "
//                         "Key Vault was also checked during the audit, and they are "
//                         "operational without any issues.",
//                         style: TextStyle(height: 1.5, fontSize: 15),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 10),

//             // _buildTile(
//             //   icon: TablerIcons.info_circle,
//             //   title: "Site & Contact Info",
//             //   children: const [
//             //     Padding(
//             //       padding: EdgeInsets.all(12.0),
//             //       child: Text(
//             //         "Site address and contact information details go here.",
//             //         style: TextStyle(fontSize: 15),
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             _buildTile(
//               icon: TablerIcons.info_circle,
//               title: "Site & Contact Info",
//               children: const [
//                 // Divider directly below the tile header
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//                   child: Divider(
//                     height: 1,
//                     thickness: 1,
//                     color: Color(0xFFE5E7EB),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     // Address Row
//                     _ContactRow(
//                       icon: TablerIcons.map_pin,
//                       label: "Address",
//                       value: "2526 Australia, Melbourne",
//                     ),

//                     SizedBox(height: 10),

//                     Divider(height: 1, thickness: 1, color: Color(0xFFE5E7EB)),
//                     SizedBox(height: 15),

//                     // Contact Person Row
//                     _ContactRow(
//                       icon: TablerIcons.user,
//                       label: "Contact",
//                       value: "John Doe",
//                     ),

//                     SizedBox(height: 10),
//                     Divider(height: 1, thickness: 1, color: Color(0xFFE5E7EB)),
//                     SizedBox(height: 15),

//                     // Phone Number Row
//                     _ContactRow(
//                       icon: TablerIcons.phone,
//                       label: "Phone Number",
//                       value: "(415) 555-0123",
//                     ),
//                   ],
//                 ),
//               ],
//             ),

//             const SizedBox(height: 10),

//             _buildTile(
//               icon: TablerIcons.history,
//               title: "Activity Log",
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Text(
//                     "Activity logs for this sector...",
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 25),

//             // CHECK IN BUTTON
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF1C75BC),
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   "Check In",
//                   style: TextStyle(fontSize: 17, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // CUSTOM EXPANSION TILE WIDGET
//   Widget _buildTile({
//     required IconData icon,
//     required String title,
//     required List<Widget> children,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: ExpansionTile(
//         leading: Icon(icon, color: Color(0xFF374151)),
//         title: Padding(
//           padding: const EdgeInsets.only(top: 2),
//           child: Text(
//             title,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//           ),
//         ),
//         tilePadding: const EdgeInsets.symmetric(horizontal: 15),
//         shape: const RoundedRectangleBorder(
//           side: BorderSide(color: Colors.transparent),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         // childrenPadding: const EdgeInsets.only(bottom: 15),
//         children: children,
//       ),
//     );
//   }
// }

// class _ContactRow extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final String value;

//   const _ContactRow({
//     required this.icon,
//     required this.label,
//     required this.value,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Icon
//         Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: const Color(0xFFC9E2F5),
//             shape: BoxShape.circle,
//           ),
//           child: Icon(icon, size: 20, color: const Color(0xFF1C75BC)),
//         ),
//         const SizedBox(width: 12),

//         // Texts
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 label,
//                 style: const TextStyle(
//                   fontSize: 13,
//                   color: Colors.black45,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 value,
//                 style: const TextStyle(fontSize: 15, color: Colors.black87),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class SectorCheckedScreen extends StatefulWidget {
  const SectorCheckedScreen({super.key});

  @override
  State<SectorCheckedScreen> createState() => _SectorCheckedScreenState();
}

bool showCheckInSection = false;

class _SectorCheckedScreenState extends State<SectorCheckedScreen> {
  late TextEditingController notesController;
  @override
  void initState() {
    super.initState();
    notesController = TextEditingController(); // INIT
  }

  @override
  void dispose() {
    notesController.dispose(); // CLEANUP
    super.dispose();
  }

  void _submitAndCheckOut() {
    // 🔵 THIS IS WHERE YOU RUN YOUR SUBMIT LOGIC
    // Example:
    print("Submitting checklist and checking out...");

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Check Out Submitted")));

    // Optional: reset state or navigate
    // Navigator.pop(context);
    setState(() {
      isCheckedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFF3F6FA),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon: const Icon(TablerIcons.arrow_left),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      //   title: const Text(
      //     "Sector Check In",
      //     style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
      //   ),
      //   actions: [
      //     IconButton(icon: const Icon(TablerIcons.refresh), onPressed: () {}),
      //   ],
      // ),
      backgroundColor: const Color(0xFFF3F6FA),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Leading button
              IconButton(
                icon: const Icon(TablerIcons.arrow_left),
                onPressed: () => Navigator.pop(context),
              ),

              // Title
              const Text(
                "Sector Check In",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),

              // Actions
              IconButton(
                icon: const Icon(TablerIcons.refresh),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DOCKET
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Job#130234",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const Text(
                  "Docket#130234",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1F2937),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 2),

            // STATUS
            const Text(
              "KFC Dapto",
              style: TextStyle(
                color: Color(0xFF03A65A),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 2),
            const Text(
              "Checked in at 09:41 AM",
              style: TextStyle(color: Color(0xFF4B5563), fontSize: 13),
            ),

            const SizedBox(height: 24),

            // LOCATION NOTES BUTTON
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFC9E2F5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Location Notes",
                  style: TextStyle(
                    color: Color(0xFF1766A8),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ------------------- INSTRUCTIONS ------------------------
            _buildTile(
              icon: TablerIcons.clipboard_text,
              title: "Instructions",
              children: const [
                // top divider (under tile header)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFE5E7EB),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ASLAM - MULTIPLE ALARMS",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "ZONE(S): B11: Z03 E BLK CLASSRM\n"
                        "ER1008 BLOCK: EB12: Z02 H BLK ENTRY DOORS\n"
                        "BLOCK: HB06: Z02 D BLK CLASSRM DR1014\n"
                        "BLOCK: D Wilons",
                        style: TextStyle(height: 1.4, fontSize: 15),
                      ),

                      SizedBox(height: 10),

                      Divider(thickness: 1, color: Color(0xFFE5E7EB)),
                      SizedBox(height: 15),

                      Text(
                        "- In the event that the exit gate fails to open automatically, "
                        "you can manually activate it by switching the motor switch located "
                        "at the exit gate (see attached photo) to the ON position.",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "- We can still override the entry gate by using Master key as "
                        "previously communicated within the group.",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "- Plans are underway to replace the pedestrian gate lock with "
                        "standardized locks, enabling access via the Master key.",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "- The functionality of all school internal keys obtained from the "
                        "Key Vault was also checked during the audit, and they are "
                        "operational without any issues.",
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ------------------- SITE & CONTACT INFO ------------------------
            _buildTile(
              icon: TablerIcons.info_circle,
              title: "Site & Contact Info",
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 2,

                    thickness: 1,
                    color: Color(0xFFF3F4F6),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      _ContactRow(
                        icon: TablerIcons.map_pin,
                        label: "Address",
                        value: "2526 Australia, Melbourne",
                      ),

                      SizedBox(height: 10),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xFFF3F4F6),
                      ),
                      SizedBox(height: 15),

                      _ContactRow(
                        icon: TablerIcons.user,
                        label: "Contact",
                        value: "John Doe",
                      ),

                      SizedBox(height: 10),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xFFF3F4F6),
                      ),
                      SizedBox(height: 15),

                      _ContactRow(
                        icon: TablerIcons.phone,
                        label: "Phone Number",
                        value: "(415) 555-0123",
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ------------------- ACTIVITY LOG ------------------------
            _buildTile(
              icon: TablerIcons.history,
              title: "History",
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFE5E7EB),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Activity logs for this sector...",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            if (isCheckedIn) ...[
              // ------------------- QUICK ACTION BUTTONS ------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      _quickAction(
                        TablerIcons.nfc, // ignored because we pass SVG
                        "assets/images/svgs/lets-icons--nfc 1 (1).svg",
                        () {},
                      ),

                      Text(
                        "Scan \nNFC",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),

                  // 1) NFC — uses SVG
                  SizedBox(width: 12),

                  // 2) QR — normal tabler icon
                  Column(
                    children: [
                      _quickAction(
                        TablerIcons.qrcode,
                        null,
                        () {}, // no SVG
                      ),
                      Text(
                        "Scan \nQR",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),

                  // 3) Camera — uses SVG
                  Column(
                    children: [
                      _quickAction(
                        TablerIcons.camera, // ignored because SVG exists
                        "assets/images/svgs/camera.svg",
                        () {},
                      ),
                      Text(
                        " Take \nPhoto",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),

                  // 4) Incident report — normal tabler icon
                  Column(
                    children: [
                      _quickAction(TablerIcons.alert_hexagon, null, () {}),

                      Text(
                        "Incident \nReport",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ------------------- CHECKLIST BOX ------------------------
              ChecklistBox(),

              const SizedBox(height: 20),

              NotesBox(controller: notesController), // << ADDED HERE

              const SizedBox(height: 40),
            ],

            // CHECK IN BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (!isCheckedIn) {
                      // FIRST CLICK → user is checking in
                      isCheckedIn = true;
                    } else {
                      // SECOND CLICK → user is checking out
                      _submitAndCheckOut();
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1C75BC),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  isCheckedIn ? "Submit and Check Out" : "Check In",
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------- EXPANSION TILE STYLE ----------------------
  Widget _buildTile({
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return _CustomExpansionTile(icon: icon, title: title, children: children);
  }
}

// ---------------------- CONTACT ROW WIDGET ----------------------
class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ContactRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFC9E2F5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20, color: const Color(0xFF1C75BC)),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 15, color: Colors.black87),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CustomExpansionTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final List<Widget> children;

  const _CustomExpansionTile({
    required this.icon,
    required this.title,
    required this.children,
  });

  @override
  State<_CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<_CustomExpansionTile> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // FULLY CLICKABLE HEADER
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => setState(() => expanded = !expanded),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  Icon(widget.icon, color: const Color(0xFF374151)),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF374151),
                        ),
                      ),
                    ),
                  ),

                  Icon(
                    expanded
                        ? TablerIcons.chevron_up
                        : TablerIcons.chevron_down,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),

          // CONTENT
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: Column(children: widget.children),
            crossFadeState: expanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
        ],
      ),
    );
  }
}

// Widget _quickAction(String label, IconData icon, String? svgPath) {
//   return Container(
//     width: 70,
//     height: 70,
//     decoration: BoxDecoration(
//       color: const Color(0xFF1C75BC),
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         if (svgPath != null)
//           SvgPicture.asset(
//             svgPath,
//             width: 36,
//             height: 36,
//             fit: BoxFit.contain, // <-- important
//             colorFilter: const ColorFilter.mode(
//               Colors.white,
//               BlendMode.srcIn,
//             ), // <-- works with any SVG fill
//           )
//         else
//           Icon(icon, color: Colors.white, size: 36),

//         const SizedBox(height: 5),

//         Text(
//           label,
//           textAlign: TextAlign.center,
//           style: const TextStyle(color: Colors.white, fontSize: 11),
//         ),
//       ],
//     ),
//   );
// }

Widget _quickAction(IconData icon, String? svgPath, VoidCallback onTap) {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: onTap,
    child: Container(
      width: 65,
      height: 65,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1C75BC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (svgPath != null)
            SvgPicture.asset(
              svgPath,
              width: 37,
              height: 37,
              color: Colors.white,
            )
          else
            Icon(icon, color: Colors.white, size: 37),

          const SizedBox(height: 4),
        ],
      ),
    ),
  );
}

bool isCheckedIn = false;

class ChecklistBox extends StatefulWidget {
  const ChecklistBox({super.key});

  @override
  State<ChecklistBox> createState() => _ChecklistBoxState();
}

class _ChecklistBoxState extends State<ChecklistBox> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(TablerIcons.checklist, size: 30),

              SizedBox(width: 10),
              Text(
                "Checklist",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff374151),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          const Divider(color: Color(0xFFF3F4F6)),

          const SizedBox(height: 10),
          _checkItem(
            "Added details of which site I covered as a backup location in the note section",
            check1,
            () {
              setState(() => check1 = !check1);
            },
          ),

          const SizedBox(height: 10),
          const Divider(color: Color(0xFFF3F4F6)),
          _checkItem(
            "Included details in my end of shift \nsummary",
            check2,
            () {
              setState(() => check2 = !check2);
            },
          ),

          const SizedBox(height: 10),
          const Divider(color: Color(0xFFF3F4F6)),
          _checkItem(
            "Added details of which site I covered as a backup location in the note section",
            check3,
            () {
              setState(() => check3 = !check3);
            },
          ),

          const SizedBox(height: 10),
          const Divider(color: Color(0xFFF3F4F6)),
          const SizedBox(height: 6),

          Center(
            child: Text(
              "${_completedCount()} / 3 tasks completed",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }

  // Count completed tasks
  int _completedCount() {
    return [check1, check2, check3].where((c) => c).length;
  }

  Widget _checkItem(String text, bool isChecked, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: 1.5),
                borderRadius: BorderRadius.circular(4),
                color: isChecked ? Colors.green : Colors.white,
              ),
              child: isChecked
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                text,
                style: const TextStyle(fontSize: 17, height: 1.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotesBox extends StatelessWidget {
  final TextEditingController controller;

  const NotesBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Notes",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff374151),
          ),
        ),
        const SizedBox(height: 8),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xffF9FAFB),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xffD1D5DB), width: 1),
          ),
          child: TextField(
            controller: controller,
            maxLines: 5,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Add notes or observations here...",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
