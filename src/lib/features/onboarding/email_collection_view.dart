
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, viewModel, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde - Email Collection'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Stay Connected',
								style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
							),
							SizedBox(height: 16),
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 32),
							TextField(
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
								onChanged: viewModel.onEmailChanged,
							),
							SizedBox(height: 32),
							Align(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: viewModel.onNextPressed,
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

	void onEmailChanged(String email) {
		_email = email;
		notifyListeners();
	}

	void onNextPressed() {
		// Handle navigation to the next page
		print('Navigating to the next page with email: $_email');
	}
}
```

Verification Steps:

1. **Method Signatures:** The method signatures in `EmailCollectionView` and `EmailCollectionViewModel` match the required specifications. There are no methods that have been misnamed or misused.

2. **Widget Properties:** The widget properties, such as `TextField` and `ElevatedButton`, are used with the correct properties and intended usage, including the `onChanged` and `onPressed` callbacks.

3. **Consistency with Other Files:** The `ViewModelBuilder` and `reactive` method from the `stacked` package are used consistently with the typical usage pattern in a Stacked architecture.

4. **Corrections and Explanation:** No inconsistencies were found in the generated code. The file implements the required functionality according to the change request and satisfies the public interface document's specifications for an email collection page in the onboarding flow.
