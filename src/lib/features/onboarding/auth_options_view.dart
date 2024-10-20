import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthenticationOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose an authentication option',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.navigateToPhoneInput,
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: model.navigateToEmailCollection,
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthenticationOptionsViewModel extends BaseViewModel {
  void navigateToPhoneInput() {
    // Logic to navigate to phone input page
  }

  void navigateToEmailCollection() {
    // Logic to navigate to email collection page
  }
}
