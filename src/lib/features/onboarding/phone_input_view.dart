import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneInputViewModel>.reactive(
      viewModelBuilder: () => PhoneInputViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Add Your Phone'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your phone number to get yourself verified and ready to start your ride.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.updatePhoneNumber,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.isPhoneNumberValid
                    ? model.navigateToVerification
                    : null,
                child: Text('Next'),
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
      _phoneNumber.length == 10; // Example validation logic

  void updatePhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  void navigateToVerification() {
    // Navigate to the verification code page
  }
}
