import 'package:flutter/material.dart';
import 'biliminsani.dart'; // dosya adını senin klasörüne göre düzenle

class Siralibiliminsani extends StatelessWidget {
  final String kategori;
  const Siralibiliminsani({super.key, required this.kategori});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> bilimInsanlari = {
      "Fizik": ["Cahit Arf"],
      "Coğrafya": ["Piri Reis"],
      "Tıp": ["İbn Sina", "Hulusi Behçet"],
      "Astronomi": ["Ali Kuşçu", "Takiyüddin"],
      "Felsefe": ["Farabi", "İbn Rüşd"],
      "Kimya": ["Cabir bin Hayyan", "Razi"],
      "Biyoloji": ["Zekeriya Er-Razi"],
      "Matematik": ["Ömer Hayyam", "El-Harezmi"],
    };

    final liste = bilimInsanlari[kategori] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$kategori Bilim İnsanları")),
      body: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          final isim = liste[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(isim),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Biliminsani(title: isim), // ismi gönderiyoruz
                ),
              );
            },
          );
        },
      ),
    );
  }
}
