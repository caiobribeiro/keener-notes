import 'package:firebase_auth/firebase_auth.dart';

class SigninResponse {
  final bool success;
  final UserCredential? userCredential;
  final String? firebaseAuthException;
  SigninResponse({
    required this.success,
    this.userCredential,
    this.firebaseAuthException,
  });
}
