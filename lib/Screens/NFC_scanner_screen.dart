import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NFCScannerScreen extends StatefulWidget {
  const NFCScannerScreen({super.key});

  @override
  State<NFCScannerScreen> createState() => _NFCScannerScreenState();
}

class _NFCScannerScreenState extends State<NFCScannerScreen> {
  bool isScanned = false;

  @override
  void initState() {
    super.initState();
    _startNFC();
  }

  void _startNFC() async {
    bool isAvailable = await NfcManager.instance.isAvailable();

    if (!isAvailable) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("NFC is not available on this device")),
      );
      Navigator.pop(context);
      return;
    }

    NfcManager.instance.startSession(
      pollingOptions: {NfcPollingOption.iso14443, NfcPollingOption.iso18092},
      onDiscovered: (NfcTag tag) {
        if (!isScanned) {
          isScanned = true;

          final nfcData = tag.data.toString();

          NfcManager.instance.stopSession();
          Navigator.pop(context, nfcData); // return NFC result
        }
      },
    );
  }

  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NFC Check In")),
      body: const Center(
        child: Text(
          "Hold your phone near an NFC tag...",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
