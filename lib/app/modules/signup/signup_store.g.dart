// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupStore on SignupStoreBase, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: 'SignupStoreBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordSafeComputed;

  @override
  bool get isPasswordSafe =>
      (_$isPasswordSafeComputed ??= Computed<bool>(() => super.isPasswordSafe,
              name: 'SignupStoreBase.isPasswordSafe'))
          .value;
  Computed<bool>? _$isPasswordEmptyComputed;

  @override
  bool get isPasswordEmpty =>
      (_$isPasswordEmptyComputed ??= Computed<bool>(() => super.isPasswordEmpty,
              name: 'SignupStoreBase.isPasswordEmpty'))
          .value;
  Computed<bool>? _$isPasswordEqualComputed;

  @override
  bool get isPasswordEqual =>
      (_$isPasswordEqualComputed ??= Computed<bool>(() => super.isPasswordEqual,
              name: 'SignupStoreBase.isPasswordEqual'))
          .value;
  Computed<bool>? _$isBothPasswordValidComputed;

  @override
  bool get isBothPasswordValid => (_$isBothPasswordValidComputed ??=
          Computed<bool>(() => super.isBothPasswordValid,
              name: 'SignupStoreBase.isBothPasswordValid'))
      .value;
  Computed<bool>? _$isFormCorrectComputed;

  @override
  bool get isFormCorrect =>
      (_$isFormCorrectComputed ??= Computed<bool>(() => super.isFormCorrect,
              name: 'SignupStoreBase.isFormCorrect'))
          .value;

  late final _$emailAtom =
      Atom(name: 'SignupStoreBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'SignupStoreBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordConfirmationAtom =
      Atom(name: 'SignupStoreBase.passwordConfirmation', context: context);

  @override
  String get passwordConfirmation {
    _$passwordConfirmationAtom.reportRead();
    return super.passwordConfirmation;
  }

  @override
  set passwordConfirmation(String value) {
    _$passwordConfirmationAtom.reportWrite(value, super.passwordConfirmation,
        () {
      super.passwordConfirmation = value;
    });
  }

  late final _$responseWarningAtom =
      Atom(name: 'SignupStoreBase.responseWarning', context: context);

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

  late final _$registerAccountAsyncAction =
      AsyncAction('SignupStoreBase.registerAccount', context: context);

  @override
  Future<SignupResponse> registerAccount() {
    return _$registerAccountAsyncAction.run(() => super.registerAccount());
  }

  late final _$SignupStoreBaseActionController =
      ActionController(name: 'SignupStoreBase', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$SignupStoreBaseActionController.startAction(
        name: 'SignupStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$SignupStoreBaseActionController.startAction(
        name: 'SignupStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordConfirmation(String value) {
    final _$actionInfo = _$SignupStoreBaseActionController.startAction(
        name: 'SignupStoreBase.setPasswordConfirmation');
    try {
      return super.setPasswordConfirmation(value);
    } finally {
      _$SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResponseWarning(String value) {
    final _$actionInfo = _$SignupStoreBaseActionController.startAction(
        name: 'SignupStoreBase.setResponseWarning');
    try {
      return super.setResponseWarning(value);
    } finally {
      _$SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic navigateToSignin() {
    final _$actionInfo = _$SignupStoreBaseActionController.startAction(
        name: 'SignupStoreBase.navigateToSignin');
    try {
      return super.navigateToSignin();
    } finally {
      _$SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
passwordConfirmation: ${passwordConfirmation},
responseWarning: ${responseWarning},
isEmailValid: ${isEmailValid},
isPasswordSafe: ${isPasswordSafe},
isPasswordEmpty: ${isPasswordEmpty},
isPasswordEqual: ${isPasswordEqual},
isBothPasswordValid: ${isBothPasswordValid},
isFormCorrect: ${isFormCorrect}
    ''';
  }
}
