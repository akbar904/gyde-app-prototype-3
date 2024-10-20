import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Verification'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter Code',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: model.onCodeChanged,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                    model.isCodeValid ? () => model.onContinue(context) : null,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodeViewModel extends BaseViewModel {
  String _code = '';
  bool get isCodeValid => _code.length == 6;

  void onCodeChanged(String code) {
    _code = code;
    notifyListeners();
  }

  void onContinue(BuildContext context) {
    // Handle continue logic, e.g., navigate to the next page
    Navigator.of(context).pushNamed('/emailCollection');
  }
}
