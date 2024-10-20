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
          children: <Widget>[
            Text(
              'By continuing, you have read and agree to our terms and condition.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Please read these terms of use carefully before using this platform',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next page in the onboarding flow
                  Navigator.pushNamed(context, '/nextPage');
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
