import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  String get email => _email;

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  Future<void> submitEmail() async {
    // Logic to handle email submission, e.g., API call or local storage update
    // Implement submission logic here

    // Simulate a delay for the example
    await Future.delayed(Duration(seconds: 2));
  }
}
