import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/gorunumler/giris.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // FlutterFire CLI ile oluşturduysan

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Firebase öncesi gerekli
  await Firebase.initializeApp(); // Firebase başlatma
  runApp(const TDBTECH());
}

class TDBTECH extends StatelessWidget {
  const TDBTECH({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Giris(),
    );
  }
}
