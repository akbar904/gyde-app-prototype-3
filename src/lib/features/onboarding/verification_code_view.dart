
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
								style: Theme.of(context).textTheme.headline5,
							),
							SizedBox(height: 16),
							Text(
								'We sent verification code to your phone number +65 8123 4567',
								style: Theme.of(context).textTheme.bodyText1,
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
							SizedBox(height: 32),
							Align(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: model.canSubmit ? model.onSubmit : null,
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

class VerificationCodeViewModel extends BaseViewModel {
	String _code = '';

	bool get canSubmit => _code.isNotEmpty;

	void onCodeChanged(String code) {
		_code = code;
		notifyListeners();
	}

	void onSubmit() {
		// Logic to handle code submission
	}
}
