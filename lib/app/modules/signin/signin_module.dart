import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signin/signin_page.dart';
import 'package:keener_notes/app/modules/signin/signin_store.dart';

class SigninModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<SigninStore>(SigninStore.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const SigninPage(),
    );
  }
}
