import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/modules/signin/signin_page.dart';
import 'package:keener_notes/modules/signup/signup_store.dart';

class SigninModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<SignupStore>(SignupStore.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const SigninPage(),
    );
  }
}
