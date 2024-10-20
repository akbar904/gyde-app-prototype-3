import 'package:stacked/stacked.dart';

class TermsConditionsPageViewModel extends BaseViewModel {
  // Whether the terms and conditions have been accepted
  bool _hasAcceptedTerms = false;

  bool get hasAcceptedTerms => _hasAcceptedTerms;

  // Method to accept the terms
  void acceptTerms() {
    _hasAcceptedTerms = true;
    notifyListeners();
  }

  // Method to decline the terms
  void declineTerms() {
    _hasAcceptedTerms = false;
    notifyListeners();
  }
}
