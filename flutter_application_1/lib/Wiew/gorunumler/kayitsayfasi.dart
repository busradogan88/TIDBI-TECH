import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Kayitsayfasi extends StatefulWidget {
  final String title;
  const Kayitsayfasi({super.key, required this.title});

  @override
  State<Kayitsayfasi> createState() => _KayitsayfasiState();
}

class _KayitsayfasiState extends State<Kayitsayfasi> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();
  bool _isLoading = false;

  Future<void> _kayitOl() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _sifreController.text.trim(),
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Kayıt başarılı!")));

      Navigator.pop(context); // Kayıt sonrası giriş ekranına dön
    } on FirebaseAuthException catch (e) {
      String mesaj = "Bir hata oluştu!";
      if (e.code == 'email-already-in-use') {
        mesaj = "Bu e-posta zaten kullanılıyor.";
      } else if (e.code == 'weak-password') {
        mesaj = "Şifre çok zayıf.";
      }

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(mesaj)));
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Ol", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 237, 227, 118),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: "E-posta",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _sifreController,
                decoration: const InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _kayitOl,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          237,
                          227,
                          118,
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text(
                        "Kayıt Ol",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
