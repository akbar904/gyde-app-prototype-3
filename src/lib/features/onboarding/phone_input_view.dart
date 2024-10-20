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
              children: [
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: model.onContinue,
                    child: Text('Continue'),
                  ),
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

  void onContinue() {
    // Navigate to VerificationCodeView or perform phone number verification
  }
}
