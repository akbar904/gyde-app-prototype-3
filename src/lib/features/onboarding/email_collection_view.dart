
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Stay Connected',
								style: Theme.of(context).textTheme.headline4,
							),
							SizedBox(height: 16),
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: Theme.of(context).textTheme.bodyText2,
							),
							SizedBox(height: 32),
							TextField(
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
								onChanged: model.setEmail,
							),
							Spacer(),
							SizedBox(
								width: double.infinity,
								child: ElevatedButton(
									onPressed: model.isEmailValid ? model.navigateToNext : null,
									child: Text('Next'),
								),
							),
						],
					),
				),
			),
		);
	}
}

class EmailCollectionViewModel extends BaseViewModel {
	String _email = '';

	void setEmail(String email) {
		_email = email;
		notifyListeners();
	}

	bool get isEmailValid => _email.contains('@');

	void navigateToNext() {
		// Navigation logic to the next page in the onboarding flow
	}
}
