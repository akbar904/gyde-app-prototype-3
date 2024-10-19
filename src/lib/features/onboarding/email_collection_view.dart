
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde - Stay Connected'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Stay Connected',
								style: TextStyle(
									fontSize: 24,
									fontWeight: FontWeight.bold,
								),
							),
							SizedBox(height: 8),
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 16),
							TextField(
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
								onChanged: model.updateEmail,
							),
							SizedBox(height: 24),
							Align(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: model.submitEmail,
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

	void updateEmail(String email) {
		_email = email;
		notifyListeners();
	}

	void submitEmail() {
		// Logic to handle email submission
		// Navigate to the next page in the onboarding flow
	}
}
