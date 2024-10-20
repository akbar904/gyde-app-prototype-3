import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/phone_input_viewmodel.dart';

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
                onChanged: model.onPhoneNumberChanged,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.isPhoneNumberValid ? model.onContinue : null,
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
