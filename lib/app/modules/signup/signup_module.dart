import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signup/signup_page.dart';
import 'package:keener_notes/app/modules/signup/signup_store.dart';

class SignupModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<SignupStore>(SignupStore.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const SignupPage(),
    );
  }
}
