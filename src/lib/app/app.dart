import 'package:gyde_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:gyde_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:gyde_app/features/onboarding/welcome_view.dart';
import 'package:gyde_app/features/onboarding/auth_options_view.dart';
import 'package:gyde_app/features/onboarding/phone_input_view.dart';
import 'package:gyde_app/features/onboarding/verification_code_view.dart';
import 'package:gyde_app/features/onboarding/email_collection_view.dart';
import 'package:gyde_app/features/onboarding/welcome_confirmation_view.dart';
import 'package:gyde_app/features/onboarding/terms_conditions_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: AuthOptionsView),
    MaterialRoute(page: PhoneInputView),
    MaterialRoute(page: VerificationCodeView),
    MaterialRoute(page: EmailCollectionView),
    MaterialRoute(page: WelcomeConfirmationView),
    MaterialRoute(page: TermsConditionsView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
  ],
)
class App {}
