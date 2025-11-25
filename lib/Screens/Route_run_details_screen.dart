// import 'package:flutter/material.dart';

// class RouteRunDetailsScreen extends StatelessWidget {
//   final String docketNumber;
//   final String description;
//   final String address;

//   const RouteRunDetailsScreen({
//     super.key,
//     required this.docketNumber,
//     required this.description,
//     required this.address,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//         elevation: 0,
//         toolbarHeight: 15,
//       ),
//       body: Column(
//         children: [
//           // 🔹 Top bar (same as your main screen)
//           Container(
//             width: double.infinity,
//             height: 50,
//             color: Colors.white,
//             child: Row(
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.close, color: Colors.blue),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.centerLeft,
//                     padding: const EdgeInsets.only(left: 8),
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
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.menu, color: Colors.grey),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 40),

//           // 🔹 Main content
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 Text(
//                   "Compliance",
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   "Docket# $docketNumber",
//                   style: const TextStyle(fontSize: 15),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   description,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 15),
//                 ),
//                 const SizedBox(height: 20),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Address: $address",
//                         style: const TextStyle(fontSize: 14),
//                       ),
//                       const SizedBox(height: 4),
//                       const Text(
//                         "Contact:",
//                         style: TextStyle(fontSize: 14, color: Colors.black),
//                       ),
//                       const SizedBox(height: 2),
//                       const Text(
//                         "Phone:",
//                         style: TextStyle(fontSize: 14, color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 40),

//                 // 🔹 Green check-in button
//                 SizedBox(
//                   width: double.infinity,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                     ),
//                     child: const Text(
//                       "Check In",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class RouteRunDetailsScreen extends StatelessWidget {
//   final String docketNumber;
//   final String description;
//   final String address;

//   const RouteRunDetailsScreen({
//     super.key,
//     required this.docketNumber,
//     required this.description,
//     required this.address,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 241, 241),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           "BACKUP PATROL",
//           style: TextStyle(color: Colors.black, fontSize: 14),
//         ),
//         centerTitle: false,
//         leading: IconButton(
//           icon: const Icon(Icons.close, color: Colors.blue),
//           onPressed: () => Navigator.pop(context),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.menu, color: Colors.grey),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20),
//             const Text(
//               "Compliance",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               "Docket# $docketNumber",
//               style: const TextStyle(fontSize: 16, color: Colors.black),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               description,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 14, color: Colors.black87),
//             ),
//             const SizedBox(height: 20),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Address: $address",
//                     style: const TextStyle(color: Colors.black87),
//                   ),
//                   const Text(
//                     "Contact:",
//                     style: TextStyle(color: Colors.black54),
//                   ),
//                   const Text("Phone:", style: TextStyle(color: Colors.black54)),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 minimumSize: const Size(double.infinity, 48),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//               ),
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Checked In successfully")),
//                 );
//               },
//               child: const Text(
//                 "Check In",
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class RouteRunDetailsScreen extends StatefulWidget {
  final String docketNumber;
  final String description;
  final String address;

  const RouteRunDetailsScreen({
    super.key,
    required this.docketNumber,
    required this.description,
    required this.address,
  });

  @override
  State<RouteRunDetailsScreen> createState() => _RouteRunDetailsScreenState();
}

class _RouteRunDetailsScreenState extends State<RouteRunDetailsScreen> {
  bool isCheckedIn = false;
  final TextEditingController _notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "BACKUP PATROL",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Compliance",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                "Docket# ${widget.docketNumber}",
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 4),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address: ${widget.address}",
                      style: const TextStyle(color: Colors.black87),
                    ),
                    const Text(
                      "Contact:",
                      style: TextStyle(color: Colors.black54),
                    ),
                    const Text(
                      "Phone:",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // 🔹 Conditionally render content
              if (!isCheckedIn)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    setState(() => isCheckedIn = true);
                  },
                  child: const Text(
                    "Check In",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              else
                Column(
                  children: [
                    const Text(
                      "(Checked in at 21:55)",
                      style: TextStyle(
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // 🔹 Green icon buttons row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _iconButton(Icons.assignment, "Form"),
                        const SizedBox(width: 10),
                        _iconButton(Icons.qr_code, "Scan"),
                        const SizedBox(width: 10),
                        _iconButton(Icons.photo_camera, "Photo"),
                        const SizedBox(width: 10),

                        _iconButton(Icons.flash_on, "Alert"),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // 🔹 Notes box
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Notes",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _notesController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔹 Submit & Check Out
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Checked out successfully"),
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Submit and Check Out",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Small reusable green icon button widget
  Widget _iconButton(IconData icon, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }
}
