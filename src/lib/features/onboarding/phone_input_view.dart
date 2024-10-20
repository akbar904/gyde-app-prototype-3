import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneInputViewModel>.reactive(
      viewModelBuilder: () => PhoneInputViewModel(),
      builder: (context, model, child) {
        return Scaffold(
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
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: model.onPhoneNumberChanged,
                ),
                Spacer(),
                ElevatedButton(
                  onPressed:
                      model.isPhoneNumberValid ? model.onNextPressed : null,
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';

  void onPhoneNumberChanged(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  bool get isPhoneNumberValid => _phoneNumber.length >= 10;

  void onNextPressed() {
    // Navigate to the next page in the onboarding flow
  }
}
