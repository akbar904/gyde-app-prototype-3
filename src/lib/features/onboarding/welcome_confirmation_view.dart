import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome Aboard!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Experience comfort, Tailored to your needs',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: model.onNext,
                  child: Text('Next'),
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
  void onNext() {
    // Navigate to the next page
  }
}
