
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<PhoneInputViewModel>.reactive(
			viewModelBuilder: () => PhoneInputViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Add Your Phone'),
					backgroundColor: Colors.black,
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Enter your phone number to get yourself verified and ready to start your ride.',
								style: TextStyle(fontSize: 16.0),
							),
							SizedBox(height: 20.0),
							TextField(
								decoration: InputDecoration(
									labelText: 'Phone Number',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.phone,
								onChanged: model.updatePhoneNumber,
							),
							SizedBox(height: 20.0),
							Align(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: model.submitPhoneNumber,
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
	String _phoneNumber = '';

	void updatePhoneNumber(String value) {
		_phoneNumber = value;
	}

	void submitPhoneNumber() {
		// Navigate to the verification code view
	}
}
