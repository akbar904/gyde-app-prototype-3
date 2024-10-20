import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PhoneInputViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Add Your Phone'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                onChanged: viewModel.onPhoneNumberChanged,
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: viewModel.canProceed ? viewModel.onContinue : null,
                  child: Text('Continue'),
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

  void onPhoneNumberChanged(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  bool get canProceed => _phoneNumber.isNotEmpty;

  void onContinue() {
    // Navigate to the next screen
  }
}
