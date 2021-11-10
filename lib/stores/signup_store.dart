import 'package:mobx/mobx.dart';
part 'signup_store.g.dart';

class SignupStore = _SignupStoreBase with _$SignupStore;

abstract class _SignupStoreBase with Store {
  @observable
  String name = '';
  String email = '';
  String phone = '';
  String password = '';
  String confirmPassword = '';
  bool loading = false;

  @action
  void setName(String value) => name = value;
  void setEmail(String value) => email = value;
  void setPhone(String value) => phone = value;
  void setPassword(String value) => password = value;
  void setConfirmPassword(String value) => confirmPassword = value;

  @computed
  bool get isValidForm {
    return name.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty;
  }

  @action
  Future<void> _signUp() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 2));
    loading = false;
  }
}
