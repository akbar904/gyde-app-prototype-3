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
                onChanged: viewModel.onPhoneNumberChanged,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: viewModel.onSubmit,
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
  String _phoneNumber;

  void onPhoneNumberChanged(String value) {
    _phoneNumber = value;
  }

  void onSubmit() {
    // Logic to handle phone number submission
  }
}
