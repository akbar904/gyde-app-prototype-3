import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  String get email => _email;

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  bool validateEmail() {
    // Simple email validation logic
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegExp.hasMatch(_email);
  }
}
