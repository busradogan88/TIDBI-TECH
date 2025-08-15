import 'package:flutter/material.dart';

class OyunBioHaritaSayfasi extends StatelessWidget {
  final String title;
  const OyunBioHaritaSayfasi({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/gamecontrol.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                
              ),
               const Text(
                " Oyunlar",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
               const SizedBox(height: 20),
              Image.asset(
                'assets/images/global.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                
              ),
               const Text(
                " Harita",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/research.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                
              ),
               const Text(
                " Biyografi",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}