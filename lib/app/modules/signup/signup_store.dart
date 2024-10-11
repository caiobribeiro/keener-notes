import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signup/repository/signup_repository.dart';
import 'package:keener_notes/app/modules/signup/response/signup_response.dart';
import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = SignupStoreBase with _$SignupStore;

abstract class SignupStoreBase with Store {
  final SignupRepository _signupRepository = Modular.get<SignupRepository>();

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  String passwordConfirmation = '';

  @action
  void setPasswordConfirmation(String value) => passwordConfirmation = value;

  @observable
  String responseWarning = '';

  @action
  void setResponseWarning(String value) => responseWarning = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isPasswordSafe =>
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.]).{8,}$')
          .hasMatch(password);

  @computed
  bool get isPasswordEmpty =>
      password.isNotEmpty && passwordConfirmation.isNotEmpty;

  @computed
  bool get isPasswordEqual => password == passwordConfirmation;

  @computed
  bool get isBothPasswordValid =>
      isPasswordSafe && isPasswordEmpty && isPasswordEqual;

  @computed
  bool get isFormCorrect => isBothPasswordValid && isEmailValid;

  @action
  Future<SignupResponse> registerAccount() async {
    final response =
        await _signupRepository.signup(email: email, password: password);
    if (!response.success) {
      responseWarning = response.firebaseAuthException ?? 'Unknown error';
    }
    if (response.success) {
      Modular.to.navigate('/noteslist/');
    }
    return response;
  }

  @action
  navigateToSignin() {
    Modular.to.navigate('/');
  }
}
