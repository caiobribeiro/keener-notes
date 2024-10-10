// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SigninStore on SigninStoreBase, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: 'SigninStoreBase.isEmailValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'SigninStoreBase.isFormValid'))
          .value;

  late final _$emailControllerTextAtom =
      Atom(name: 'SigninStoreBase.emailControllerText', context: context);

  @override
  String get emailControllerText {
    _$emailControllerTextAtom.reportRead();
    return super.emailControllerText;
  }

  @override
  set emailControllerText(String value) {
    _$emailControllerTextAtom.reportWrite(value, super.emailControllerText, () {
      super.emailControllerText = value;
    });
  }

  late final _$passwordControllerTextAtom =
      Atom(name: 'SigninStoreBase.passwordControllerText', context: context);

  @override
  String get passwordControllerText {
    _$passwordControllerTextAtom.reportRead();
    return super.passwordControllerText;
  }

  @override
  set passwordControllerText(String value) {
    _$passwordControllerTextAtom
        .reportWrite(value, super.passwordControllerText, () {
      super.passwordControllerText = value;
    });
  }

  late final _$responseWarningAtom =
      Atom(name: 'SigninStoreBase.responseWarning', context: context);

  @override
  String get responseWarning {
    _$responseWarningAtom.reportRead();
    return super.responseWarning;
  }

  @override
  set responseWarning(String value) {
    _$responseWarningAtom.reportWrite(value, super.responseWarning, () {
      super.responseWarning = value;
    });
  }

  late final _$isUserLoggedAsyncAction =
      AsyncAction('SigninStoreBase.isUserLogged', context: context);

  @override
  Future<void> isUserLogged() {
    return _$isUserLoggedAsyncAction.run(() => super.isUserLogged());
  }

  late final _$signinAsyncAction =
      AsyncAction('SigninStoreBase.signin', context: context);

  @override
  Future<void> signin() {
    return _$signinAsyncAction.run(() => super.signin());
  }

  late final _$SigninStoreBaseActionController =
      ActionController(name: 'SigninStoreBase', context: context);

  @override
  dynamic navigateToRegister() {
    final _$actionInfo = _$SigninStoreBaseActionController.startAction(
        name: 'SigninStoreBase.navigateToRegister');
    try {
      return super.navigateToRegister();
    } finally {
      _$SigninStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailControllerText: ${emailControllerText},
passwordControllerText: ${passwordControllerText},
responseWarning: ${responseWarning},
isEmailValid: ${isEmailValid},
isFormValid: ${isFormValid}
    ''';
  }
}
