import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

class PhoneInputView extends StatelessWidget {
  const PhoneInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneInputViewModel>.reactive(
      viewModelBuilder: PhoneInputViewModel.new,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Your Phone'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Enter your phone number to get yourself verified and ready to start your ride.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                onChanged: model.updatePhoneNumber,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.onNextPressed,
                  child: const Text('Next'),
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
  final NavigationService _navigationService = NavigationService();

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  Future<void> onNextPressed() async {
    // Implement the navigation to the next page
    await _navigationService.navigateTo(Routes.verificationCodeView);
  }
}
