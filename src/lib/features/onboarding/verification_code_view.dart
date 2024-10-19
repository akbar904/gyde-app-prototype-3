
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<VerificationCodeViewModel>.reactive(
			viewModelBuilder: () => VerificationCodeViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Verification Code'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Enter Code',
								style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
								onPressed: model.onContinuePressed,
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
	String _verificationCode = '';

	void onCodeChanged(String value) {
		_verificationCode = value;
	}

	void onContinuePressed() {
		// Handle the verification code submission logic here
		if (_verificationCode.isNotEmpty) {
			// Proceed to the next step in the onboarding flow
		}
	}
}
