import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signin/repository/signin_repository.dart';
import 'package:keener_notes/app/modules/signin/service/signin_service.dart';
import 'package:keener_notes/app/modules/signin/signin_page.dart';
import 'package:keener_notes/app/modules/signin/signin_store.dart';

class SigninModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<SigninStore>(SigninStore.new);

    i.addSingleton<SigninService>(SigninService.new);
    i.addSingleton<SigninRepository>(SigninRepositoryImpl.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const SigninPage(),
    );
  }
}
