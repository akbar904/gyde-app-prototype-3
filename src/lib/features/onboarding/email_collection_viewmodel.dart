import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';
  String get email => _email;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  bool validateEmail() {
    // Simple regex for email validation
    final emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(_email);
  }

  Future<void> submitEmail() async {
    if (validateEmail()) {
      // Handle the email submission logic
      // For example, calling a service to store the email
      setBusy(true);
      await Future.delayed(Duration(seconds: 2)); // Simulate network call
      setBusy(false);
      // Navigate to the next view or show a success message
    } else {
      // Show validation error
    }
  }
}
