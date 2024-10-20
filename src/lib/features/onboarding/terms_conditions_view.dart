import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TermsConditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TermsConditionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Terms and Conditions'),
          backgroundColor:
              Colors.black, // Assuming 'Gyde' branding involves black color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'By continuing, you have read and agree to our terms and condition.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Please read these terms of use carefully before using this platform.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the next screen in the onboarding flow
              model.navigateToNextScreen();
            },
            child: Text('Continue'),
            style: ElevatedButton.styleFrom(
              primary:
                  Colors.black, // Assuming 'Gyde' branding involves black color
            ),
          ),
        ),
      ),
    );
  }
}

class TermsConditionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void navigateToNextScreen() {
    _navigationService.navigateTo(
        'NextScreenRoute'); // Replace 'NextScreenRoute' with actual route name
  }
}
