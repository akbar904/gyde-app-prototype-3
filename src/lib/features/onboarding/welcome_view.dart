
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<WelcomeViewModel>.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				backgroundColor: Colors.white,
				body: Padding(
					padding: const EdgeInsets.all(24.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: [
							Text(
								'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
								style: TextStyle(
									fontSize: 24,
									fontWeight: FontWeight.bold,
									color: Colors.black,
								),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 32),
							OutlinedButton(
								onPressed: () {
									model.navigateToAuthOptions();
								},
								child: Text(
									'Get Started',
									style: TextStyle(
										fontSize: 18,
										color: Colors.blue,
									),
								),
								style: OutlinedButton.styleFrom(
									padding: EdgeInsets.symmetric(vertical: 16),
									side: BorderSide(color: Colors.blue),
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
		// Logic to navigate to Authentication Options View
	}
}
