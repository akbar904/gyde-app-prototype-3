import 'package:stacked/stacked.dart';

class AuthOptionsViewModel extends BaseViewModel {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void selectPhoneAuth() {
    // Logic for selecting phone authentication
  }

  void selectEmailAuth() {
    // Logic for selecting email authentication
  }
}
