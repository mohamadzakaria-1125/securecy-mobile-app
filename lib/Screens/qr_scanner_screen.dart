import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  bool isScanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan QR Code")),
      body: MobileScanner(
        onDetect: (barcodeCapture) {
          if (!isScanned) {
            final String? code = barcodeCapture.barcodes.first.rawValue;
            isScanned = true;

            Navigator.pop(context, code); // return the QR result
          }
        },
      ),
    );
  }
}
