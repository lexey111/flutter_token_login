//  flutter packages pub run build_runner build
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class MyStore = _MyStore with _$MyStore;

abstract class _MyStore with Store {
  @observable
  String token = '';

  @observable
  String user = '';

  @observable
  String stateString = 'Starting...';

  @observable
  bool fetched = false;

  @computed
  bool get hasToken {
    return token != '';
  }

  @action
  void setToken(String tokenString, String userName) {
    token = tokenString;
    user = userName;
  }

  @action
  Future<void> setTokenStringDelayed(String? tokenString, Function onError, Function onSuccess) async {
    token = '';
    user = '···';
    stateString = 'Starting...';
    await Future.delayed(const Duration(seconds: 1));

    stateString = 'Waiting for token...';

    await Future.delayed(const Duration(seconds: 1));

    token = tokenString ?? '';
    stateString = 'Checking token...';

    if (token == '') {
      await Future.delayed(const Duration(seconds: 1));
      user = 'ERROR';
      onError();
    } else {
      stateString = 'Redirecting...';
      user = 'USER';
      await Future.delayed(const Duration(milliseconds: 500));
      onSuccess();
    }
  }
}
