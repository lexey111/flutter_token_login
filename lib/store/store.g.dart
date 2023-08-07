// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyStore on _MyStore, Store {
  Computed<bool>? _$hasTokenComputed;

  @override
  bool get hasToken => (_$hasTokenComputed ??=
          Computed<bool>(() => super.hasToken, name: '_MyStore.hasToken'))
      .value;

  late final _$tokenAtom = Atom(name: '_MyStore.token', context: context);

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$userAtom = Atom(name: '_MyStore.user', context: context);

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$stateStringAtom =
      Atom(name: '_MyStore.stateString', context: context);

  @override
  String get stateString {
    _$stateStringAtom.reportRead();
    return super.stateString;
  }

  @override
  set stateString(String value) {
    _$stateStringAtom.reportWrite(value, super.stateString, () {
      super.stateString = value;
    });
  }

  late final _$fetchedAtom = Atom(name: '_MyStore.fetched', context: context);

  @override
  bool get fetched {
    _$fetchedAtom.reportRead();
    return super.fetched;
  }

  @override
  set fetched(bool value) {
    _$fetchedAtom.reportWrite(value, super.fetched, () {
      super.fetched = value;
    });
  }

  late final _$setTokenStringDelayedAsyncAction =
      AsyncAction('_MyStore.setTokenStringDelayed', context: context);

  @override
  Future<void> setTokenStringDelayed(
      String? tokenString, Function onError, Function onSuccess) {
    return _$setTokenStringDelayedAsyncAction.run(
        () => super.setTokenStringDelayed(tokenString, onError, onSuccess));
  }

  late final _$_MyStoreActionController =
      ActionController(name: '_MyStore', context: context);

  @override
  void setToken(String tokenString, String userName) {
    final _$actionInfo =
        _$_MyStoreActionController.startAction(name: '_MyStore.setToken');
    try {
      return super.setToken(tokenString, userName);
    } finally {
      _$_MyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
token: ${token},
user: ${user},
stateString: ${stateString},
fetched: ${fetched},
hasToken: ${hasToken}
    ''';
  }
}
