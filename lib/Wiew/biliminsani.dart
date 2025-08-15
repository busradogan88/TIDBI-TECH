import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/buluslar.dart';

class Biliminsani extends StatelessWidget {
  final String title;
  const Biliminsani({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "ALİ KUŞÇU'NUN BİLİMSEL BULUŞLARI",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 237, 227, 118),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 190, 171, 245),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/cezeriii.jpg',
                          width: 230,
                          height: 230,
                          fit: BoxFit.contain,
                        ),
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
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Buluslar(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 190, 171, 245),
                          ),
                          child: const Text(
                            'Buluşları Görüntüle',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20, width: 50),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 190, 171, 245),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.volume_up, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                'Sesli Dinle',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
