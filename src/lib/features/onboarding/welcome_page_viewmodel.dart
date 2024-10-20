import 'package:stacked/stacked.dart';

class WelcomePageViewModel extends BaseViewModel {
  // Internal state variables
  bool _isLoading = false;

  // Getters for state variables
  bool get isLoading => _isLoading;

  // Method to simulate a network call or initialization process
  Future<void> initialize() async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 2));
    setBusy(false);
  }

  // Simulating action on 'Get Started' button click
  void onGetStarted() {
    // Implement navigation logic or additional business logic here
  }
}
