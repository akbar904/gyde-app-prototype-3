import 'package:stacked/stacked.dart';

class WelcomeViewModel extends BaseViewModel {
  // Counter value
  int _counter = 0;

  // Getter for counter
  int get counter => _counter;

  // Method to increment counter
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
