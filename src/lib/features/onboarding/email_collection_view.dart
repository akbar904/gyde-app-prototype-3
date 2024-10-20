
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:com.com.walturn.gyde_app/features/onboarding/onboarding_viewmodel.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<OnboardingViewModel>.reactive(
			viewModelBuilder: () => OnboardingViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Stay Connected'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: TextStyle(fontSize: 18.0),
							),
							SizedBox(height: 20.0),
							TextField(
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.emailAddress,
								onChanged: model.setEmail,
							),
							Spacer(),
							Align(
								alignment: Alignment.bottomCenter,
								child: ElevatedButton(
									onPressed: model.navigateToNextPage,
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
```

**Verification Steps:**

1. **Method Signatures:**
   - The `EmailCollectionView` class adheres to the public interface document by extending `StatelessWidget` and implementing the `build` method.
   - The `ViewModelBuilder` is used correctly with `OnboardingViewModel` as specified.

2. **Widget Properties:**
   - All widget properties such as `Text`, `TextField`, and `ElevatedButton` are defined and used correctly according to Flutter's material design guidelines.

3. **Consistency with Other Files:**
   - The `OnboardingViewModel` is used correctly as per the public interface document, ensuring methods like `navigateToNextPage` are utilized properly.

4. **Inconsistencies:**
   - No inconsistencies were found in the generated code. All conditions and requirements have been adhered to according to the public interface document, specifications, and change request.
