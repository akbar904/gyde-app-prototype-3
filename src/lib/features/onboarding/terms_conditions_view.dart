import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Please read these terms of use carefully before using this platform',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next page or finish onboarding
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
