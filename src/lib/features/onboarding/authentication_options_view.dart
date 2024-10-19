
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthenticationOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => AuthenticationOptionsViewModel(),
			builder: (context, viewModel, child) => Scaffold(
				appBar: AppBar(
					title: Text('Authentication Options'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: [
							ElevatedButton(
								onPressed: viewModel.navigateToPhoneInput,
								child: Text('Continue with Phone'),
							),
							SizedBox(height: 16),
							ElevatedButton(
								onPressed: viewModel.navigateToEmailCollection,
								child: Text('Continue with Email'),
							),
						],
					),
				),
			),
		);
	}
}

class AuthenticationOptionsViewModel extends BaseViewModel {
	void navigateToPhoneInput() {
		// Logic to navigate to PhoneInputView
	}

	void navigateToEmailCollection() {
		// Logic to navigate to EmailCollectionView
	}
}
