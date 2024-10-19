
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: const Text('Gyde'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							const Text(
								'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
								style: TextStyle(fontSize: 18),
							),
							const SizedBox(height: 20),
							Center(
								child: ElevatedButton(
									onPressed: model.navigateToAuthOptions,
									child: const Text('Get Started'),
								),
							),
						],
					),
				),
			),
		);
	}
}

class WelcomeViewModel extends BaseViewModel {
	void navigateToAuthOptions() {
		// Navigation logic to AuthOptionsView
	}
}
