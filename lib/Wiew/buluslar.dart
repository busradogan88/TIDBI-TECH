import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/bulusaciklama.dart';

class Buluslar extends StatelessWidget {
  const Buluslar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALİ KUŞÇU'NUN BULUŞLARI"),
        backgroundColor: const Color.fromARGB(255, 237, 227, 118),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/planets.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
          
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bulusaciklama(
                        title: "Gezegenler Arası Uzaklık",
                        img: "assets/images/planets.png",
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Gezegenler Arası Uzaklık",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              SizedBox( height: 20,),
             Image.asset(
                'assets/images/constellation.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              
             ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bulusaciklama(
                        title: "Yıldız Haritaları",
                        img: "assets/images/constellation.png",
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Yıldız Haritaları",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              SizedBox( height: 20,),
             Image.asset(
                'assets/images/clock.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bulusaciklama(
                        title: "Güneş Saati",
                        img: "assets/images/clock.png",
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Güneş Saati",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
