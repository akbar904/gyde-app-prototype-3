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
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          WelcomePage(onNext: _nextPage),
          AuthOptionsPage(onNext: _nextPage),
          PhoneInputPage(onNext: _nextPage),
          VerificationCodePage(onNext: _nextPage),
          EmailCollectionPage(onNext: _nextPage),
          WelcomeConfirmationPage(onNext: _nextPage),
          TermsConditionsPage(onNext: _nextPage),
        ],
      ),
    );
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}

class WelcomePage extends StatelessWidget {
  final VoidCallback onNext;

  const WelcomePage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              'Experience luxury travel with ease. Register and manage your bookings seamlessly.'),
          ElevatedButton(onPressed: onNext, child: const Text('Get Started')),
        ],
      ),
    );
  }
}

class AuthOptionsPage extends StatelessWidget {
  final VoidCallback onNext;

  const AuthOptionsPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: onNext, child: const Text('Continue with Phone')),
          ElevatedButton(
              onPressed: onNext, child: const Text('Continue with Email')),
        ],
      ),
    );
  }
}

class PhoneInputPage extends StatelessWidget {
  final VoidCallback onNext;

  const PhoneInputPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Add Your Phone'),
          const Text(
              'Enter your phone number to get yourself verified and ready to start your ride.'),
          TextField(
              decoration: const InputDecoration(labelText: 'Phone Number')),
          ElevatedButton(onPressed: onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}

class VerificationCodePage extends StatelessWidget {
  final VoidCallback onNext;

  const VerificationCodePage({Key? key, required this.onNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Enter Code'),
          const Text(
              'We sent verification code to your phone number +65 8123 4567'),
          TextField(
              decoration:
                  const InputDecoration(labelText: 'Verification Code')),
          ElevatedButton(onPressed: onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}

class EmailCollectionPage extends StatelessWidget {
  final VoidCallback onNext;

  const EmailCollectionPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Stay Connected'),
          const Text(
              'To provide you with tailored services and updates, please share your email with us.'),
          TextField(
              decoration: const InputDecoration(labelText: 'Email Address')),
          ElevatedButton(onPressed: onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}

class WelcomeConfirmationPage extends StatelessWidget {
  final VoidCallback onNext;

  const WelcomeConfirmationPage({Key? key, required this.onNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Welcome Aboard!'),
          const Text(
              'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.'),
          const Text('Experience comfort, Tailored to your needs'),
          ElevatedButton(onPressed: onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}

class TermsConditionsPage extends StatelessWidget {
  final VoidCallback onNext;

  const TermsConditionsPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              'By continuing, you have read and agree to our terms and condition.'),
          const Text(
              'Please read these terms of use carefully before using this platform'),
          const Text(
              'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.'),
          ElevatedButton(onPressed: onNext, child: const Text('Continue')),
        ],
      ),
    );
  }
}
