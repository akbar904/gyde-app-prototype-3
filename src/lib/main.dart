
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gyde_app/app/app.bottomsheets.dart';
import 'package:gyde_app/app/app.dialogs.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/features/onboarding/welcome_view.dart';

void main() async {
	await runZonedGuarded(() async {
		WidgetsFlutterBinding.ensureInitialized();

		await SystemChrome.setPreferredOrientations([
			DeviceOrientation.portraitUp,
		]);

		await setupLocator();
		setupDialogUi();
		setupBottomSheetUi();

		runApp(const GydeApp());
	}, (exception, stackTrace) async {
		// Handle exceptions here
		print('Caught error: $exception');
		print('Stack trace: $stackTrace');
		// You might want to log this to a service or show a user-friendly error message
	});
}

class GydeApp extends StatelessWidget {
	const GydeApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Gyde',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: const OnboardingFlow(),
		);
	}
}

class OnboardingFlow extends StatefulWidget {
	const OnboardingFlow({Key? key}) : super(key: key);

	@override
	_OnboardingFlowState createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
	final PageController _controller = PageController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: PageView(
				controller: _controller,
				children: [
					_onboardingPage(
						title: 'Get Started',
						description: 'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'Continue with Phone',
						description: 'Continue with Email',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'Add Your Phone',
						description: 'Enter your phone number to get yourself verified and ready to start your ride.',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'Enter Code',
						description: 'We sent verification code to your phone number +65 8123 4567',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'Stay Connected',
						description: 'To provide you with tailored services and updates, please share your email with us.',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'Welcome Aboard!',
						description: 'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
					_onboardingPage(
						title: 'By continuing, you have read and agree to our terms and condition.',
						description: 'Please read these terms of use carefully before using this platform',
						branding: 'Gyde',
						onNext: () => _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
					),
				],
			),
		);
	}

	Widget _onboardingPage({required String title, required String description, required String branding, required void Function() onNext}) {
		return Padding(
			padding: const EdgeInsets.all(16.0),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.center,
				children: [
					Text(
						branding,
						style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
					),
					Spacer(),
					Text(
						title,
						style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
					),
					SizedBox(height: 16),
					Text(
						description,
						textAlign: TextAlign.center,
					),
					Spacer(),
					ElevatedButton(
						onPressed: onNext,
						child: Text('Next'),
					),
				],
			),
		);
	}
}
