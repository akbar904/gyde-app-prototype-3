import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TermsConditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TermsConditionsViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Terms and Conditions'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'By continuing, you have read and agree to our terms and condition.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Please read these terms of use carefully before using this platform',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
                style: TextStyle(fontSize: 16.0),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: viewModel.navigateToNextPage,
                  child: Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermsConditionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void navigateToNextPage() {
    _navigationService.navigateTo('/nextPage');
  }
}
