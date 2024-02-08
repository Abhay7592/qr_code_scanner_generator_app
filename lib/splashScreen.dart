import 'package:flutter/material.dart';
import 'package:qr_code_scanner_generator/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), // Set your desired border radius
                child: Image.asset("assets/qrimage.jpg", height: 100, width: 100),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "QR Genie Pro",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
