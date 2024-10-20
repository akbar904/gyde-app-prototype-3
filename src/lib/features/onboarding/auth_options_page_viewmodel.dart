import 'package:stacked/stacked.dart';

class AuthOptionsPageViewModel extends BaseViewModel {
  // Method to handle 'Continue with Phone' option
  void continueWithPhone() {
    // Logic to handle phone authentication
    // This might involve navigation to the phone input page
    notifyListeners();
  }

  // Method to handle 'Continue with Email' option
  void continueWithEmail() {
    // Logic to handle email authentication
    // This might involve navigation to the email collection page
    notifyListeners();
  }
}
