import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
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
                'Authentication Options',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  model.navigateToPhoneInput();
                },
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  model.navigateToEmailCollection();
                },
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  void navigateToPhoneInput() {
    // Implement navigation to PhoneInputView
  }

  void navigateToEmailCollection() {
    // Implement navigation to EmailCollectionView
  }
}
