import 'package:keener_notes/app/modules/signin/response/signin_response.dart';
import 'package:keener_notes/app/modules/signin/service/signin_service.dart';

abstract class SigninRepository {
  Future<SigninResponse> signin({
    required String email,
    required String password,
  });
}

class SigninRepositoryImpl implements SigninRepository {
  final SigninService _service;

  SigninRepositoryImpl(this._service);

  @override
  Future<SigninResponse> signin({
    required String email,
    required String password,
  }) async {
    return _service.signin(email: email, password: password);
  }
}
