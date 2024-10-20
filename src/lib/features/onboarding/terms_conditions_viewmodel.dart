import 'package:stacked/stacked.dart';

class TermsConditionsViewModel extends BaseViewModel {
  // Add any business logic or state management functions here.
  // Since the public interface document did not specify any methods,
  // this ViewModel currently does not contain any specific logic.

  void acceptTerms() {
    // Logic for when the terms and conditions are accepted
    notifyListeners();
  }

  void declineTerms() {
    // Logic for when the terms and conditions are declined
    notifyListeners();
  }
}
