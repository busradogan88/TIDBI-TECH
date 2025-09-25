import 'package:firebase_auth/firebase_auth.dart';

class KimlikDogrulamaServisi {
  
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get mevcutKullanici => _firebaseAuth.currentUser;
  Stream<User?> get kullaniciDurumu =>
      _firebaseAuth.authStateChanges();

  // Kullanıcı Kaydı
  Future<void> kullaniciOlustur({
    required String eposta,
    required String sifre,
  }) async {
   
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: eposta,
        password: sifre,
      );
  }
  

  // Kullanıcı Girişi
  Future<void> girisYap({
    required String eposta,
    required String sifre,
  }) async {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: eposta,
        password: sifre,
      );
      
  }

  // Kullanıcı Çıkışı
  Future<void> cikisYap() async {

      await _firebaseAuth.signOut();
    
  }

}