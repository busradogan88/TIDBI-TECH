import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wiew/gorunumler/kayitsayfasi.dart';
import 'package:flutter_application_1/Wiew/gorunumler/oyun_bio_harita_sayfasi.dart';
import 'package:flutter_application_1/Wiew/gorunumler/sifremiunuttum.dart';
import 'package:flutter_application_1/Wiew/services/auth.dart';

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();
  final KimlikDogrulamaServisi _authService = KimlikDogrulamaServisi();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "GİRİŞ EKRANI",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/science.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hoş Geldiniz!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildTextField(_emailController, 'E-posta', false),
                const SizedBox(height: 20),
                _buildTextField(_sifreController, 'Şifre', true),
                const SizedBox(height: 20),
                _isLoading
                    ? const CircularProgressIndicator()
                    : _buildButton("Giriş Yap", _girisYap),
                const SizedBox(height: 10),
                _buildButton("Kayıt Ol", _kayitSayfasinaGit),
                TextButton(
                  onPressed: _sifreYenile,
                  child: const Text(
                    "Şifremi Unuttum",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String hint, bool obscure) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 190, 171, 245),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return Container(
      width: 150,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 190, 171, 245),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Future<void> _girisYap() async {
    if (_emailController.text.isEmpty || _sifreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Lütfen e-posta ve şifreyi girin")),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      await _authService.girisYap(
        eposta: _emailController.text.trim(),
        sifre: _sifreController.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OyunBioHaritaSayfasi(title: ""),
        ),
      );
    } catch (e) {
      String mesaj = "Bilinmeyen bir hata oluştu.";
      if (e.toString().contains("invalid-credential")) {
        mesaj = "E-posta veya şifre hatalı.";
      } else if (e.toString().contains("user-not-found")) {
        mesaj = "Kullanıcı bulunamadı. Önce kayıt olun.";
      } else if (e.toString().contains("wrong-password")) {
        mesaj = "Şifre yanlış.";
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(mesaj)));
    }

    setState(() => _isLoading = false);
  }

  void _kayitSayfasinaGit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Kayitsayfasi(title: "Kayıt Sayfası"),
      ),
    );
  }

  void _sifreYenile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Sifremiunuttum(title: "Şifre Yenileme"),
      ),
    );
  }
}
