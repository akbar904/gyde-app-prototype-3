import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthenticationOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose how you would like to continue',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to PhoneInputView
                  model.navigateToPhoneInput();
                },
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to EmailCollectionView
                  model.navigateToEmailCollection();
                },
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthenticationOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToPhoneInput() {
    _navigationService.navigateTo(Routes.phoneInputView);
  }

  void navigateToEmailCollection() {
    _navigationService.navigateTo(Routes.emailCollectionView);
  }
}
