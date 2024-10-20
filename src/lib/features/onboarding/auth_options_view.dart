import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose an authentication method:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  viewModel.navigateToPhoneInput();
                },
                child: Text('Continue with Phone'),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.navigateToEmailCollection();
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

class AuthOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void navigateToPhoneInput() {
    _navigationService.navigateTo('/phone-input-view');
  }

  void navigateToEmailCollection() {
    _navigationService.navigateTo('/email-collection-view');
  }
}
