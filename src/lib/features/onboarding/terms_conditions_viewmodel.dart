import 'package:stacked/stacked.dart';

class TermsConditionsViewModel extends BaseViewModel {
  // Indicate whether the terms and conditions have been accepted
  bool _accepted = false;

  bool get accepted => _accepted;

  // Method to accept the terms and conditions
  void acceptTerms() {
    _accepted = true;
    notifyListeners();
  }

  // Method to decline the terms and conditions
  void declineTerms() {
    _accepted = false;
    notifyListeners();
  }
}
