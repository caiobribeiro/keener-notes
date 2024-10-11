import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signin/repository/signin_repository.dart';
import 'package:mobx/mobx.dart';

part 'signin_store.g.dart';

class SigninStore = SigninStoreBase with _$SigninStore;

abstract class SigninStoreBase with Store {
  final SigninRepository _repository = Modular.get<SigninRepository>();

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  String responseWarning = '';

  @action
  void setResponseWarning(String value) => responseWarning = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isFormValid => isEmailValid && password.isNotEmpty;

  @action
  Future<void> isUserLogged() async {
    var currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      Modular.to.navigate('/noteslist/');
    }
  }

  @action
  Future<void> signin() async {
    final response = await _repository.signin(email: email, password: password);
    if (!response.success) {
      setResponseWarning(response.firebaseAuthException ?? 'Unknown error');
    } else {
      Modular.to.navigate('/noteslist/');
    }
  }

  @action
  navigateToRegister() {
    Modular.to.navigate('/signup/');
  }
}
