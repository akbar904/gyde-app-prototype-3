import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthenticationOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthenticationOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose an option to authenticate:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => model.navigateWithPhone(),
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => model.navigateWithEmail(),
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
  void navigateWithPhone() {
    // Navigate to PhoneInputView
  }

  void navigateWithEmail() {
    // Navigate to EmailCollectionView
  }
}
