import 'package:stacked/stacked.dart';

class AuthOptionsViewModel extends BaseViewModel {
  bool _isPhoneSelected = true;

  bool get isPhoneSelected => _isPhoneSelected;

  void toggleAuthMethod() {
    _isPhoneSelected = !_isPhoneSelected;
    notifyListeners();
  }

  void continueWithPhone() {
    // Logic to continue with phone authentication
  }

  void continueWithEmail() {
    // Logic to continue with email authentication
  }
}
