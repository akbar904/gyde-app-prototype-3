import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Verification Code'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Enter Code',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 16),
                Text(
                  'We sent a verification code to your phone number +65 8123 4567',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Verification Code',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: model.onCodeChanged,
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: model.isCodeValid ? model.onContinue : null,
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

class VerificationCodeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  String _verificationCode = '';

  void onCodeChanged(String value) {
    _verificationCode = value;
    notifyListeners();
  }

  bool get isCodeValid => _verificationCode.length == 6;

  void onContinue() {
    if (isCodeValid) {
      _navigationService.navigateTo('/email-collection');
    }
  }
}
