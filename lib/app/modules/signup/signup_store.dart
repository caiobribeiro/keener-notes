import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = SignupStoreBase with _$SignupStore;

abstract class SignupStoreBase with Store {
  @observable
  String emailControllerText = '';

  @observable
  String passwordControllerText = '';

  @observable
  String passwordConfirmationControllerText = '';

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
}
