
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<WelcomeViewModel>.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				body: SafeArea(
					child: Padding(
						padding: const EdgeInsets.all(16.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text(
									'Get Started',
									style: TextStyle(
										fontSize: 32,
										fontWeight: FontWeight.bold,
									),
								),
								SizedBox(height: 24),
								Text(
									'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
									style: TextStyle(
										fontSize: 18,
										color: Colors.grey[700],
									),
								),
								SizedBox(height: 48),
								Align(
									alignment: Alignment.center,
									child: ElevatedButton(
										onPressed: model.navigateToAuthenticationOptions,
										child: Text('Next'),
									),
								),
							],
						),
					),
				),
			),
		);
	}
}

class WelcomeViewModel extends BaseViewModel {
	void navigateToAuthenticationOptions() {
		// Logic to navigate to the Authentication Options View
	}
}
