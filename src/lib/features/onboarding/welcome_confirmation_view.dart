
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
			viewModelBuilder: () => WelcomeConfirmationViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Welcome Aboard!',
								style: Theme.of(context).textTheme.headline4,
							),
							const SizedBox(height: 8),
							Text(
								"You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
								style: Theme.of(context).textTheme.bodyText1,
							),
							const SizedBox(height: 16),
							Text(
								'Experience comfort, Tailored to your needs',
								style: Theme.of(context).textTheme.bodyText1,
							),
							const SizedBox(height: 24),
							Align(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: model.navigateToTermsConditions,
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

class WelcomeConfirmationViewModel extends BaseViewModel {
	Future<void> navigateToTermsConditions() async {
		// Navigation logic to the Terms and Conditions view
	}
}
