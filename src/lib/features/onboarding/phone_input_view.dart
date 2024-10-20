import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PhoneInputViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Add Your Phone'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter your phone number to get yourself verified and ready to start your ride.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                onChanged: model.updatePhoneNumber,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.isPhoneNumberValid
                      ? model.navigateToVerification
                      : null,
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';
  bool get isPhoneNumberValid =>
      _phoneNumber.length == 10; // Example validation

  void updatePhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  void navigateToVerification() {
    // Navigation logic to VerificationCodeView
  }
}
