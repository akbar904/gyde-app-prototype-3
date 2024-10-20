import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TermsConditionsViewModel>.reactive(
      viewModelBuilder: () => TermsConditionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Terms & Conditions'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Gyde!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'By using our services, you agree to the following terms and conditions. Please read them carefully.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Please read these terms of use carefully before using this platform',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () => model.onContinue(),
                  child: Text(
                      'By continuing, you have read and agree to our terms and condition.'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Button color
                    onPrimary: Colors.white, // Text color
                  ),
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
  void onContinue() {
    // Logic to handle the continuation after agreeing to terms and conditions
  }
}
