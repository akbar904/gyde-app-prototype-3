import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  String get email => _email;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  bool get isEmailValid => _validateEmail(_email);

  bool _validateEmail(String email) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(email);
  }

  Future<void> submitEmail() async {
    if (!isEmailValid) {
      throw Exception('Invalid email address');
    }
    // Integrate email submission logic here
  }
}
