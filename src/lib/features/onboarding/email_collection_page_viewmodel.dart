import 'package:stacked/stacked.dart';

class EmailCollectionPageViewModel extends BaseViewModel {
  String _email = '';
  String get email => _email;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  bool isEmailValid() {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
    return emailRegex.hasMatch(_email);
  }

  Future<void> submitEmail() async {
    setBusy(true);
    // Simulate a network call or business logic execution
    await Future.delayed(Duration(seconds: 2));
    // Here you would typically call a service to handle the email submission
    setBusy(false);
  }
}
