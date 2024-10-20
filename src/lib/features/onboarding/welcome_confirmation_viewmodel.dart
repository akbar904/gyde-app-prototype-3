import 'package:stacked/stacked.dart';

class WelcomeConfirmationViewModel extends BaseViewModel {
  // Future method to handle the confirmation logic
  Future<void> confirmAccess() async {
    setBusy(true);
    try {
      // Simulate confirmation process
      await Future.delayed(Duration(seconds: 2));
      // Logic for confirming access to Gyde services
    } catch (e) {
      // Handle any errors
    } finally {
      setBusy(false);
    }
  }
}
