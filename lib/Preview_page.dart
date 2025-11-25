// import 'package:flutter/material.dart';
// import 'package:device_frame/device_frame.dart';
// import 'package:securecy_mobile_app/Screens/login_screen.dart';

// class PreviewPage extends StatelessWidget {
//   const PreviewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           // LEFT SIDE (Optional content)
//           Expanded(
//             flex: 2,
//             child: Center(
//               child: Text(
//                 "Securecy App Preview",
//                 style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           // RIGHT SIDE (Two Phones)
//           Expanded(
//             flex: 1,
//             child: SingleChildScrollView(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // ANDROID PHONE
//                   DeviceFrame(
//                     device: Devices.android.samsungGalaxyS20,
//                     isFrameVisible: true,
//                     screen: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: MaterialApp(
//                         debugShowCheckedModeBanner: false,
//                         home: const LoginScreen(),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 40),

//                   // iPHONE
//                   DeviceFrame(
//                     device: Devices.ios.iPhone13ProMax,
//                     isFrameVisible: true,
//                     screen: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: MaterialApp(
//                         debugShowCheckedModeBanner: false,
//                         home: const LoginScreen(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'package:securecy_mobile_app/Screens/login_screen.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive width for each phone
    double phoneWidth = MediaQuery.of(context).size.width * 0.45;

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // LEFT: Samsung Android Phone
            Container(
              width: phoneWidth,
              child: DeviceFrame(
                device: Devices.android.samsungGalaxyS20,
                isFrameVisible: true,
                screen: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: const LoginScreen(),
                  ),
                ),
              ),
            ),

            // RIGHT: iPhone
            Container(
              width: phoneWidth,
              child: DeviceFrame(
                device: Devices.ios.iPhone13ProMax,
                isFrameVisible: true,
                screen: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: const LoginScreen(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
