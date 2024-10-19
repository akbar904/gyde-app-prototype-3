import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget with StatelessWidgetBase {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Auth Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                onPressed: model.navigateToPhoneInput,
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 16),
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

class AuthOptionsViewModel extends BaseViewModel with BaseViewModelBase {
  void navigateToPhoneInput() {
    // Navigation logic to PhoneInputView
  }

  void navigateToEmailCollection() {
    // Navigation logic to EmailCollectionView
  }
}
