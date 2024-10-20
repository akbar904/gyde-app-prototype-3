import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose your preferred method to authenticate and start your journey with Gyde.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => model.navigateToPhoneInput(),
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => model.navigateToEmailCollection(),
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
    // Logic for navigation to PhoneInputView
  }

  void navigateToEmailCollection() {
    // Logic for navigation to EmailCollectionView
  }
}
