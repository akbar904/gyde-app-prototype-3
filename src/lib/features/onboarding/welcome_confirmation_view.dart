import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Welcome Aboard!'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Experience comfort, Tailored to your needs',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    model.navigateToTermsConditions();
                  },
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

class WelcomeConfirmationViewModel extends BaseViewModel {
  void navigateToTermsConditions() {
    // Implement navigation logic to Terms and Conditions page
  }
}
