import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';
  String get email => _email;

  void updateEmail(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }

  bool get isEmailValid {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(_email);
  }

  Future<void> submitEmail() async {
    if (isEmailValid) {
      // Implement the logic to handle email submission, such as saving to a database or sending to a server
      // For example:
      // await _emailService.submitEmail(_email);
    } else {
      // Handle invalid email case
      // For example, you might want to show an error message
    }
  }
}
