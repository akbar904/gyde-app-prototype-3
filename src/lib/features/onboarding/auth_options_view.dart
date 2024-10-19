
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => AuthOptionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Authentication Options'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text(
								'Choose your authentication method',
								style: TextStyle(fontSize: 18),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 20),
							AuthOptionButton(
								text: 'Continue with Phone',
								onPressed: model.onContinueWithPhone,
							),
							SizedBox(height: 10),
							AuthOptionButton(
								text: 'Continue with Email',
								onPressed: model.onContinueWithEmail,
							),
						],
					),
				),
			),
		);
	}
}

class AuthOptionButton extends StatelessWidget {
	final String text;
	final VoidCallback onPressed;

	const AuthOptionButton({
		Key? key,
		required this.text,
		required this.onPressed,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return ElevatedButton(
			onPressed: onPressed,
			child: Text(text),
			style: ElevatedButton.styleFrom(
				padding: EdgeInsets.symmetric(vertical: 15),
				textStyle: TextStyle(fontSize: 16),
			),
		);
	}
}

class AuthOptionsViewModel extends BaseViewModel {
	void onContinueWithPhone() {
		// Navigate to phone input view
	}

	void onContinueWithEmail() {
		// Navigate to email collection view
	}
}
