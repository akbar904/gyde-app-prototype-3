import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'phone_input_viewmodel.dart';

class PhoneInputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneInputViewModel>.reactive(
      viewModelBuilder: () => PhoneInputViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Your Phone'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter your phone number to get yourself verified and ready to start your ride.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.onPhoneNumberChanged,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                    model.isPhoneNumberValid ? model.submitPhoneNumber : null,
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
