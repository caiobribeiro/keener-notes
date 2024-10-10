import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/modules/signin/response/signin_response.dart';

class SigninService {
  Future<SigninResponse> signin({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return SigninResponse(success: true, userCredential: response);
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'invalid-email') {
        message = 'Invalid Credential.';
        return SigninResponse(success: false, firebaseAuthException: message);
      } else if (e.code == 'invalid-credential') {
        message = 'Invalid Credential.';
        return SigninResponse(success: false, firebaseAuthException: message);
      } else {
        return SigninResponse(success: false, firebaseAuthException: message);
      }
    } catch (e) {
      return SigninResponse(
          success: false, firebaseAuthException: e.toString());
    }
  }
}
