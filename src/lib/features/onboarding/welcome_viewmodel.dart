import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService;

  WelcomeViewModel(this._navigationService);

  void navigateToAuthOptions() {
    _navigationService.navigateTo(Routes.authOptionsView);
  }
}
