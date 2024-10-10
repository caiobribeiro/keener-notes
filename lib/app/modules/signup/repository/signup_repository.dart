import 'package:keener_notes/app/modules/signup/response/signup_response.dart';
import 'package:keener_notes/app/modules/signup/service/signup_service.dart';

abstract class SignupRepository {
  Future<SignupResponse> signup({
    required String email,
    required String password,
  });
}

class SignupRepositoryImpl implements SignupRepository {
  final SignupService _service;

  SignupRepositoryImpl(this._service);

  @override
  Future<SignupResponse> signup({
    required String email,
    required String password,
  }) async {
    return _service.signup(email: email, password: password);
  }
}
