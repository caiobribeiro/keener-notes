import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/modules/signup/response/signup_response.dart';

class SignupService {
  Future<SignupResponse> signup({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return SignupResponse(
        success: true,
        userCredential: userCredential,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return SignupResponse(
          success: false,
          firebaseAuthException: e.code,
        );
      } else if (e.code == 'email-already-in-use') {
        return SignupResponse(
          success: false,
          firebaseAuthException: e.code,
        );
      } else {
        return SignupResponse(
          success: false,
          firebaseAuthException: e.code,
        );
      }
    } catch (e) {
      return SignupResponse(
        success: false,
        firebaseAuthException: e.toString(),
      );
    }
  }
}
