import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  String get email => _email;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  bool validateEmail() {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(_email);
  }

  Future<void> submitEmail() async {
    setBusy(true);
    // Add logic to submit email, e.g., API call
    await Future.delayed(Duration(seconds: 2)); // Simulating network call
    setBusy(false);
  }
}
