import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gyde_app/app/app.bottomsheets.dart';
import 'package:gyde_app/app/app.dialogs.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/features/onboarding/onboarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

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
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _onboardingPage(
              title: 'Get Started',
              description:
                  'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title: 'Continue with Phone',
              description: 'Continue with Email',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title: 'Add Your Phone',
              description:
                  'Enter your phone number to get yourself verified and ready to start your ride.',
              fieldLabel: 'Phone Number',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title: 'Enter Code',
              description:
                  'We sent verification code to your phone number +65 8123 4567',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title: 'Stay Connected',
              description:
                  'To provide you with tailored services and updates, please share your email with us.',
              fieldLabel: 'Email Address',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title: 'Welcome Aboard!',
              description:
                  'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
              additionalText: 'Experience comfort, Tailored to your needs',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
            _onboardingPage(
              title:
                  'By continuing, you have read and agree to our terms and condition.',
              description:
                  'Please read these terms of use carefully before using this platform',
              additionalText:
                  'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
              onPressed: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut),
            ),
          ],
        ),
      ),
    );
  }

  Widget _onboardingPage(
      {required String title,
      required String description,
      String? fieldLabel,
      String? additionalText,
      required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(description, textAlign: TextAlign.center),
          if (fieldLabel != null) ...[
            const SizedBox(height: 16),
            TextField(decoration: InputDecoration(labelText: fieldLabel)),
          ],
          if (additionalText != null) ...[
            const SizedBox(height: 16),
            Text(additionalText, textAlign: TextAlign.center),
          ],
          const SizedBox(height: 32),
          ElevatedButton(onPressed: onPressed, child: const Text('Next')),
        ],
      ),
    );
  }
}
