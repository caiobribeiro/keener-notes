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

  late final _$emailControllerTextAtom =
      Atom(name: 'SignupStoreBase.emailControllerText', context: context);

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
      Atom(name: 'SignupStoreBase.passwordControllerText', context: context);

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

  late final _$passwordConfirmationControllerTextAtom = Atom(
      name: 'SignupStoreBase.passwordConfirmationControllerText',
      context: context);

  @override
  String get passwordConfirmationControllerText {
    _$passwordConfirmationControllerTextAtom.reportRead();
    return super.passwordConfirmationControllerText;
  }

  @override
  set passwordConfirmationControllerText(String value) {
    _$passwordConfirmationControllerTextAtom
        .reportWrite(value, super.passwordConfirmationControllerText, () {
      super.passwordConfirmationControllerText = value;
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
emailControllerText: ${emailControllerText},
passwordControllerText: ${passwordControllerText},
passwordConfirmationControllerText: ${passwordConfirmationControllerText},
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
