import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<User?> signUp(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Stream<User?> authStateChanges() => _auth.authStateChanges();
}
