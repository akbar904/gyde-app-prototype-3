import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputPage extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter your phone number to get yourself verified and ready to start your ride.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
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
                onPressed:
                    model.canSubmit ? () => model.submitPhoneNumber() : null,
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

  bool get canSubmit => _phoneNumber.isNotEmpty;

  void updatePhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  void submitPhoneNumber() {
    // Logic to submit the phone number and navigate to the next page
  }
}
