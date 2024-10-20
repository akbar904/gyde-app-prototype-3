import 'package:stacked/stacked.dart';

class TermsConditionsViewModel extends BaseViewModel {
  bool _isAgreed = false;

  bool get isAgreed => _isAgreed;

  void toggleAgreement() {
    _isAgreed = !_isAgreed;
    notifyListeners();
  }

  Future<void> submitAgreement() async {
    if (_isAgreed) {
      // Logic to handle agreement acceptance
      // This could involve navigation to the next screen or saving the state
    } else {
      // Handle the case where terms are not agreed
      // This might involve showing an error message or prompting the user
    }
  }
}
