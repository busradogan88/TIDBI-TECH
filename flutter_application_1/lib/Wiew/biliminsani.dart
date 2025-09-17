import 'package:flutter/material.dart';
import 'buluslar.dart'; // kendi yoluna göre ayarla

class Biliminsani extends StatelessWidget {
  final String title;
  const Biliminsani({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "$title'nin Bilimsel Buluşları", // dinamik hale geldi
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 237, 227, 118),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 190, 171, 245),
            ),
            
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 190, 171, 245),
            ),
            child: Center(
              child: Text(
                "$title hakkında bilgiler burada olacak.",
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Buluslar()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 190, 171, 245),
                ),
                child: const Text(
                  'Buluşları Görüntüle',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 190, 171, 245),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.volume_up, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Sesli Dinle',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
