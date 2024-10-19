
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<VerificationViewModel>.reactive(
			viewModelBuilder: () => VerificationViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Verification'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: <Widget>[
							Text(
								'Enter Code',
								style: TextStyle(
									fontSize: 24.0,
									fontWeight: FontWeight.bold,
								),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 16.0),
							Text(
								'We sent verification code to your phone number +65 8123 4567',
								textAlign: TextAlign.center,
							),
							SizedBox(height: 32.0),
							TextField(
								decoration: InputDecoration(
									labelText: 'Verification Code',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.number,
							),
							SizedBox(height: 16.0),
							ElevatedButton(
								onPressed: model.verifyCode,
								child: Text('Continue'),
							),
						],
					),
				),
			),
		);
	}
}

class VerificationViewModel extends BaseViewModel {
	void verifyCode() {
		// Implement verification logic here
	}
}
