import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmailCollectionViewModel extends BaseViewModel {
  final NavigationService _navigationService;

  EmailCollectionViewModel(this._navigationService);

  String _email = '';
  String get email => _email;

  void updateEmail(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }

  Future<void> navigateToNextPage() async {
    await _navigationService.navigateTo(Routes.welcomeConfirmationView);
  }
}
