import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signup/repository/signup_repository.dart';
import 'package:keener_notes/app/modules/signup/response/signup_response.dart';
import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = SignupStoreBase with _$SignupStore;

abstract class SignupStoreBase with Store {
  final SignupRepository _signupRepository = Modular.get<SignupRepository>();

  @observable
  String emailControllerText = '';

  @observable
  String passwordControllerText = '';

  @observable
  String passwordConfirmationControllerText = '';

  @observable
  String responseWarning = '';

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailControllerText);

  @computed
  bool get isPasswordSafe =>
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.]).{8,}$')
          .hasMatch(passwordControllerText);

  @computed
  bool get isPasswordEmpty =>
      passwordControllerText.isNotEmpty &&
      passwordConfirmationControllerText.isNotEmpty;

  @computed
  bool get isPasswordEqual =>
      passwordControllerText == passwordConfirmationControllerText;

  @computed
  bool get isBothPasswordValid =>
      isPasswordSafe && isPasswordEmpty && isPasswordEqual;

  @computed
  bool get isFormCorrect => isBothPasswordValid && isEmailValid;

  @action
  Future<SignupResponse> registerAccount() async {
    final response = await _signupRepository.signup(
        email: emailControllerText, password: passwordControllerText);
    if (!response.success) {
      responseWarning = response.firebaseAuthException ?? 'Unknown error';
    }

    return response;
  }
}
