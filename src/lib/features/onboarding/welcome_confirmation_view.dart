import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'welcome_confirmation_viewmodel.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome Aboard!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Experience comfort, Tailored to your needs',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: model.navigateToTermsConditions,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
