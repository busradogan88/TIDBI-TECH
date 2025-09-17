import 'package:flutter/material.dart';
import 'siralibiliminsani.dart'; // yönleneceğin sayfayı import et

class Kategori extends StatelessWidget {
  final String title;
  const Kategori({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kategoriler")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 1. satır
            Row(
              children: [
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Fizik",
                    "assets/images/atom.png",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Coğrafya",
                    "assets/images/globe.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 2. satır
            Row(
              children: [
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Tıp",
                    "assets/images/dna.png",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Astronomi",
                    "assets/images/astronomy.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 3. satır
            Row(
              children: [
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Felsefe",
                    "assets/images/thinking.png",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Kimya",
                    "assets/images/laboratory.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 4. satır
            Row(
              children: [
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Biyoloji",
                    "assets/images/lab.png",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: kategoriKutusu(
                    context,
                    "Matematik",
                    "assets/images/mathematics.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget kategoriKutusu(BuildContext context, String ad, String resimYolu) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // >>> BURADA YÖNLENDİRME YAPTIK <<<
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Siralibiliminsani(kategori: ad),
              ),
            );
          },
          child: Image.asset(resimYolu, height: 150, fit: BoxFit.contain),
        ),
        const SizedBox(height: 8),
        Text(
          ad,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
