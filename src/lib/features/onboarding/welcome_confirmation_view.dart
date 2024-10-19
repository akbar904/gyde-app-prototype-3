import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Gyde'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Experience comfort, Tailored to your needs',
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: viewModel.onContinuePressed,
                  child: Text('Continue'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WelcomeConfirmationViewModel extends BaseViewModel {
  void onContinuePressed() {
    // Logic to handle continue action, likely navigation to the next page
  }
}
