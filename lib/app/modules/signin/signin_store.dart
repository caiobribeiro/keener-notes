import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signin/repository/signin_repository.dart';
import 'package:mobx/mobx.dart';

part 'signin_store.g.dart';

class SigninStore = SigninStoreBase with _$SigninStore;

abstract class SigninStoreBase with Store {
  final SigninRepository _repository = Modular.get<SigninRepository>();

  @observable
  String emailControllerText = '';

  @observable
  String passwordControllerText = '';

  @observable
  String responseWarning = '';

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailControllerText);

  @computed
  bool get isFormValid => isEmailValid && passwordControllerText.isNotEmpty;

  @action
  Future<void> signin() async {
    final response = await _repository.signin(
        email: emailControllerText, password: passwordControllerText);
    if (!response.success) {
      responseWarning = response.firebaseAuthException ?? 'Unknown error';
    }
  }
}
