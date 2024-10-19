
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<TermsConditionsViewModel>.reactive(
			viewModelBuilder: () => TermsConditionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Terms and Conditions'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'By continuing, you have read and agree to our terms and condition.',
								style: Theme.of(context).textTheme.bodyText1,
							),
							SizedBox(height: 16),
							Text(
								'Please read these terms of use carefully before using this platform',
								style: Theme.of(context).textTheme.bodyText2,
							),
							SizedBox(height: 16),
							Text(
								'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
								style: Theme.of(context).textTheme.bodyText2,
							),
							Spacer(),
							Align(
								alignment: Alignment.bottomRight,
								child: ElevatedButton(
									onPressed: model.onContinue,
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

class TermsConditionsViewModel extends BaseViewModel {
	void onContinue() {
		// Navigate to the next page in the onboarding flow
		// NavigationService().navigateTo(NextPageRoute);
	}
}
