import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/biliminsani.dart';

void main(List<String> args) {
  runApp(const TDBTECH());
}

class TDBTECH extends StatelessWidget {
  const TDBTECH({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const Biliminsani(),
    );
  }
}
