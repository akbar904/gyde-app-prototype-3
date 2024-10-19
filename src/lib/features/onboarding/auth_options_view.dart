
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => AuthOptionsViewModel(),
			builder: (context, viewModel, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text(
								'Choose an option to continue:',
								style: TextStyle(fontSize: 24),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 20),
							ElevatedButton(
								onPressed: viewModel.onContinueWithPhone,
								child: Text('Continue with Phone'),
							),
							SizedBox(height: 10),
							ElevatedButton(
								onPressed: viewModel.onContinueWithEmail,
								child: Text('Continue with Email'),
							),
						],
					),
				),
			),
		);
	}
}

class AuthOptionsViewModel extends BaseViewModel {
	void onContinueWithPhone() {
		// Logic to handle "Continue with Phone"
	}

	void onContinueWithEmail() {
		// Logic to handle "Continue with Email"
	}
}
