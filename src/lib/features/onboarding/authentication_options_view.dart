import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthenticationOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthenticationOptionsViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Authentication Options'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select an option to continue:',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: model.onContinueWithPhone,
                  child: Text('Continue with Phone'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: model.onContinueWithEmail,
                  child: Text('Continue with Email'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AuthenticationOptionsViewModel extends BaseViewModel {
  void onContinueWithPhone() {
    // Navigate to PhoneInputView
  }

  void onContinueWithEmail() {
    // Navigate to EmailCollectionView
  }
}
