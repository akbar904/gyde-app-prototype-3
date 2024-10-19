
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
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
								decoration: InputDecoration(
									labelText: 'Phone Number',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.phone,
								onChanged: (value) => model.phoneNumber = value,
							),
							Spacer(),
							SizedBox(
								width: double.infinity,
								child: ElevatedButton(
									onPressed: model.canSubmit ? model.submitPhoneNumber : null,
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

	String get phoneNumber => _phoneNumber;

	set phoneNumber(String value) {
		_phoneNumber = value;
		notifyListeners();
	}

	bool get canSubmit => _phoneNumber.isNotEmpty;

	void submitPhoneNumber() {
		// Handle phone number submission and navigation to the next step
	}
}
