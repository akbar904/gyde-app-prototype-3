import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gyde_app/app/app.bottomsheets.dart';
import 'package:gyde_app/app/app.dialogs.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/features/onboarding/welcome_view.dart';
import 'package:gyde_app/features/onboarding/auth_options_view.dart';
import 'package:gyde_app/features/onboarding/phone_input_view.dart';
import 'package:gyde_app/features/onboarding/verification_code_view.dart';
import 'package:gyde_app/features/onboarding/email_collection_view.dart';
import 'package:gyde_app/features/onboarding/welcome_confirmation_view.dart';
import 'package:gyde_app/features/onboarding/terms_conditions_view.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    await setupLocator();
    setupDialogUi();
    setupBottomSheetUi();

    runApp(const GydeOnboardingApp());
  }, (exception, stackTrace) async {
    // Handle exceptions here
    print('Caught error: $exception');
    print('Stack trace: $stackTrace');
    // You might want to log this to a service or show a user-friendly error message
  });
}

class GydeOnboardingApp extends StatelessWidget {
  const GydeOnboardingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gyde Onboarding',
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
        children: const [
          WelcomeView(),
          AuthOptionsView(),
          PhoneInputView(),
          VerificationCodeView(),
          EmailCollectionView(),
          WelcomeConfirmationView(),
          TermsConditionsView(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }

  void nextPage() {
    if (_pageController.page != null && _pageController.page!.toInt() < 6) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
