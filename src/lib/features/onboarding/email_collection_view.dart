
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, model, child) {
				return Scaffold(
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
									style: Theme.of(context).textTheme.headline5,
								),
								SizedBox(height: 8.0),
								Text(
									'To provide you with tailored services and updates, please share your email with us.',
									style: Theme.of(context).textTheme.bodyText2,
								),
								SizedBox(height: 16.0),
								TextField(
									decoration: InputDecoration(
										labelText: 'Email Address',
										border: OutlineInputBorder(),
									),
									onChanged: model.updateEmail,
								),
								SizedBox(height: 16.0),
								Align(
									alignment: Alignment.centerRight,
									child: ElevatedButton(
										onPressed: model.navigateToNext,
										child: Text('Next'),
									),
								),
							],
						),
					),
				);
			},
		);
	}
}

class EmailCollectionViewModel extends BaseViewModel {
	String _email = '';

	void updateEmail(String email) {
		_email = email;
		notifyListeners();
	}

	void navigateToNext() {
		// Implement navigation logic to the next page
	}
}
