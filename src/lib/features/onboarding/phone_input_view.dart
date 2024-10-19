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
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: model.onPhoneNumberChanged,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: model.onSubmit,
                    child: Text('Next'),
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

  void onSubmit() {
    // Logic to handle phone number submission
  }
}
