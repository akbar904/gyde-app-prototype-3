
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => TermsConditionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Terms and Conditions', style: TextStyle(fontFamily: 'Gyde')),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'By continuing, you have read and agree to our terms and condition.',
								style: TextStyle(fontSize: 18, fontFamily: 'Gyde'),
							),
							SizedBox(height: 20),
							Text(
								'Please read these terms of use carefully before using this platform',
								style: TextStyle(fontSize: 16, fontFamily: 'Gyde'),
							),
							SizedBox(height: 20),
							Expanded(
								child: SingleChildScrollView(
									child: Text(
										'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
										style: TextStyle(fontSize: 14, fontFamily: 'Gyde'),
									),
								),
							),
							SizedBox(height: 20),
							Align(
								alignment: Alignment.bottomCenter,
								child: ElevatedButton(
									onPressed: model.onContinue,
									child: Text('Continue', style: TextStyle(fontFamily: 'Gyde')),
								),
							),
						],
					),
				),
			),
		);
	}
}

class TermsConditionsViewModel extends BaseViewModel {
	void onContinue() {
		// Handle navigation to the next page in the onboarding flow
	}
}
