import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SimpleViewModel>.reactive(
      viewModelBuilder: () => SimpleViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose an authentication method',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to PhoneInputView
                  viewModel.navigateToPhoneInput();
                },
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navigate to EmailCollectionView
                  viewModel.navigateToEmailCollection();
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

class SimpleViewModel extends BaseViewModel {
  Future navigateToPhoneInput() async {
    // Navigation logic to PhoneInputView
  }

  Future navigateToEmailCollection() async {
    // Navigation logic to EmailCollectionView
  }
}
