
import 'package:flutter/material.dart';

class Sifremiunuttum extends StatelessWidget {
  final String title;
  const Sifremiunuttum({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 237, 227, 118),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Şifrenizi mi unuttunuz?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 190, 171, 245),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-posta Adresi',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black54),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // Şifre yenileme işlemi burada yapılabilir
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 190, 171, 245),
                  ),
                  child: const Text('Şifre Yenile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}