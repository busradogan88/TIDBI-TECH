import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/gorunumler/kategori.dart';
import 'package:flutter_application_1/Wiew/gorunumler/oyun.dart';
import 'package:flutter_application_1/Wiew/gorunumler/harita.dart';


class OyunBioHaritaSayfasi extends StatelessWidget {
  final String title;
  const OyunBioHaritaSayfasi({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Image.asset(
                'assets/images/gamecontrol.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Oyun(title:""),
                        ),
                      );
                    },
                    child: const Text(
                      "Oyun",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Image.asset(
                'assets/images/global.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Harita(title:""),
                        ),
                      );
                    },
                    child: const Text(
                      "Harita",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Image.asset(
                'assets/images/research.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Kategori(title:""),
                        ),
                      );
                    },
                    child: const Text(
                      "Biyografi",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
