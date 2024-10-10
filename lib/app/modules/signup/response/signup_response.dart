import 'package:firebase_auth/firebase_auth.dart';

class SignupResponse {
  final bool success;
  final UserCredential? userCredential;
  final String? firebaseAuthException;
  SignupResponse({
    required this.success,
    this.userCredential,
    this.firebaseAuthException,
  });
}
