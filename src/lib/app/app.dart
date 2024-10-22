import 'package:gyde_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:gyde_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:gyde_app/features/onboarding/welcome_view.dart';
import 'package:gyde_app/features/onboarding/auth_options_view.dart';
import 'package:gyde_app/features/onboarding/phone_input_view.dart';
import 'package:gyde_app/features/onboarding/verification_code_view.dart';
import 'package:gyde_app/features/onboarding/email_collection_view.dart';
import 'package:gyde_app/features/onboarding/welcome_confirmation_view.dart';
import 'package:gyde_app/features/onboarding/terms_conditions_view.dart';
import 'package:gyde_app/features/profile_setup/mode_selection_view.dart';
import 'package:gyde_app/features/profile_setup/personal_information_view.dart';
import 'package:gyde_app/features/profile_setup/company_information_view.dart';
import 'package:gyde_app/features/profile_setup/package_selection_view.dart';
import 'package:gyde_app/features/profile_setup/payment_method_view.dart';
import 'package:gyde_app/features/profile_setup/card_details_view.dart';
import 'package:gyde_app/features/profile_setup/notification_permission_view.dart';
import 'package:gyde_app/features/profile_setup/profile_completion_view.dart';
import 'package:gyde_app/features/personalized_experience/amenities_selection_view.dart';
import 'package:gyde_app/features/personalized_experience/frequently_visited_places_view.dart';
import 'package:gyde_app/features/personalized_experience/save_place_view.dart';
import 'package:gyde_app/features/personalized_experience/vehicle_selection_view.dart';
import 'package:gyde_app/features/personalized_experience/chauffeur_selection_view.dart';
import 'package:gyde_app/features/personalized_experience/booking_confirmation_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: AuthOptionsView),
    MaterialRoute(page: PhoneInputView),
    MaterialRoute(page: VerificationCodeView),
    MaterialRoute(page: EmailCollectionView),
    MaterialRoute(page: WelcomeConfirmationView),
    MaterialRoute(page: TermsConditionsView),
    MaterialRoute(page: ModeSelectionView),
    MaterialRoute(page: PersonalInformationView),
    MaterialRoute(page: CompanyInformationView),
    MaterialRoute(page: PackageSelectionView),
    MaterialRoute(page: PaymentMethodView),
    MaterialRoute(page: CardDetailsView),
    MaterialRoute(page: NotificationPermissionView),
    MaterialRoute(page: ProfileCompletionView),
    MaterialRoute(page: AmenitiesSelectionView),
    MaterialRoute(page: FrequentlyVisitedPlacesView),
    MaterialRoute(page: SavePlaceView),
    MaterialRoute(page: VehicleSelectionView),
    MaterialRoute(page: ChauffeurSelectionView),
    MaterialRoute(page: BookingConfirmationView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
