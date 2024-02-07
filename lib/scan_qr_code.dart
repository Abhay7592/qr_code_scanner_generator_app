import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String qrResult = 'Scanned Data will appear here ';
  Future<void> ScanQr() async{
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", true, ScanMode.QR);
      if(!mounted)return;
      setState(() {
        this.qrResult = qrCode.toString();
      });

    }on PlatformException{
      qrResult = "failed to read the QR code";
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Qr Code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text(qrResult,style: TextStyle(color: Colors.white),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ScanQr, child: Text("Scan Code"))
          ],
        ),
      ),
    );
  }
}
