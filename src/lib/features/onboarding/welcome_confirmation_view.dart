
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
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
							SizedBox(height: 16.0),
							Text(
								"You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
								style: Theme.of(context).textTheme.subtitle1,
							),
							SizedBox(height: 16.0),
							Text(
								'Experience comfort, Tailored to your needs',
								style: Theme.of(context).textTheme.subtitle1,
							),
							Spacer(),
							ElevatedButton(
								onPressed: model.onContinue,
								child: Text('Continue'),
								style: ElevatedButton.styleFrom(
									minimumSize: Size(double.infinity, 50),
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
	void onContinue() {
		// Logic to navigate to the next page
	}
}
