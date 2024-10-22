// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i23;
import 'package:flutter/material.dart';
import 'package:gyde_app/features/onboarding/auth_options_view.dart' as _i3;
import 'package:gyde_app/features/onboarding/email_collection_view.dart' as _i6;
import 'package:gyde_app/features/onboarding/phone_input_view.dart' as _i4;
import 'package:gyde_app/features/onboarding/terms_conditions_view.dart' as _i8;
import 'package:gyde_app/features/onboarding/verification_code_view.dart'
    as _i5;
import 'package:gyde_app/features/onboarding/welcome_confirmation_view.dart'
    as _i7;
import 'package:gyde_app/features/onboarding/welcome_view.dart' as _i2;
import 'package:gyde_app/features/personalized_experience/amenities_selection_view.dart'
    as _i17;
import 'package:gyde_app/features/personalized_experience/booking_confirmation_view.dart'
    as _i22;
import 'package:gyde_app/features/personalized_experience/chauffeur_selection_view.dart'
    as _i21;
import 'package:gyde_app/features/personalized_experience/frequently_visited_places_view.dart'
    as _i18;
import 'package:gyde_app/features/personalized_experience/save_place_view.dart'
    as _i19;
import 'package:gyde_app/features/personalized_experience/vehicle_selection_view.dart'
    as _i20;
import 'package:gyde_app/features/profile_setup/card_details_view.dart' as _i14;
import 'package:gyde_app/features/profile_setup/company_information_view.dart'
    as _i11;
import 'package:gyde_app/features/profile_setup/mode_selection_view.dart'
    as _i9;
import 'package:gyde_app/features/profile_setup/notification_permission_view.dart'
    as _i15;
import 'package:gyde_app/features/profile_setup/package_selection_view.dart'
    as _i12;
import 'package:gyde_app/features/profile_setup/payment_method_view.dart'
    as _i13;
import 'package:gyde_app/features/profile_setup/personal_information_view.dart'
    as _i10;
import 'package:gyde_app/features/profile_setup/profile_completion_view.dart'
    as _i16;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i24;

class Routes {
  static const welcomeView = '/welcome-view';

  static const authOptionsView = '/auth-options-view';

  static const phoneInputView = '/phone-input-view';

  static const verificationCodeView = '/verification-code-view';

  static const emailCollectionView = '/email-collection-view';

  static const welcomeConfirmationView = '/welcome-confirmation-view';

  static const termsConditionsView = '/terms-conditions-view';

  static const modeSelectionView = '/mode-selection-view';

  static const personalInformationView = '/personal-information-view';

  static const companyInformationView = '/company-information-view';

  static const packageSelectionView = '/package-selection-view';

  static const paymentMethodView = '/payment-method-view';

  static const cardDetailsView = '/card-details-view';

  static const notificationPermissionView = '/notification-permission-view';

  static const profileCompletionView = '/profile-completion-view';

  static const amenitiesSelectionView = '/amenities-selection-view';

  static const frequentlyVisitedPlacesView = '/frequently-visited-places-view';

  static const savePlaceView = '/save-place-view';

  static const vehicleSelectionView = '/vehicle-selection-view';

  static const chauffeurSelectionView = '/chauffeur-selection-view';

  static const bookingConfirmationView = '/booking-confirmation-view';

  static const all = <String>{
    welcomeView,
    authOptionsView,
    phoneInputView,
    verificationCodeView,
    emailCollectionView,
    welcomeConfirmationView,
    termsConditionsView,
    modeSelectionView,
    personalInformationView,
    companyInformationView,
    packageSelectionView,
    paymentMethodView,
    cardDetailsView,
    notificationPermissionView,
    profileCompletionView,
    amenitiesSelectionView,
    frequentlyVisitedPlacesView,
    savePlaceView,
    vehicleSelectionView,
    chauffeurSelectionView,
    bookingConfirmationView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i2.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.authOptionsView,
      page: _i3.AuthOptionsView,
    ),
    _i1.RouteDef(
      Routes.phoneInputView,
      page: _i4.PhoneInputView,
    ),
    _i1.RouteDef(
      Routes.verificationCodeView,
      page: _i5.VerificationCodeView,
    ),
    _i1.RouteDef(
      Routes.emailCollectionView,
      page: _i6.EmailCollectionView,
    ),
    _i1.RouteDef(
      Routes.welcomeConfirmationView,
      page: _i7.WelcomeConfirmationView,
    ),
    _i1.RouteDef(
      Routes.termsConditionsView,
      page: _i8.TermsConditionsView,
    ),
    _i1.RouteDef(
      Routes.modeSelectionView,
      page: _i9.ModeSelectionView,
    ),
    _i1.RouteDef(
      Routes.personalInformationView,
      page: _i10.PersonalInformationView,
    ),
    _i1.RouteDef(
      Routes.companyInformationView,
      page: _i11.CompanyInformationView,
    ),
    _i1.RouteDef(
      Routes.packageSelectionView,
      page: _i12.PackageSelectionView,
    ),
    _i1.RouteDef(
      Routes.paymentMethodView,
      page: _i13.PaymentMethodView,
    ),
    _i1.RouteDef(
      Routes.cardDetailsView,
      page: _i14.CardDetailsView,
    ),
    _i1.RouteDef(
      Routes.notificationPermissionView,
      page: _i15.NotificationPermissionView,
    ),
    _i1.RouteDef(
      Routes.profileCompletionView,
      page: _i16.ProfileCompletionView,
    ),
    _i1.RouteDef(
      Routes.amenitiesSelectionView,
      page: _i17.AmenitiesSelectionView,
    ),
    _i1.RouteDef(
      Routes.frequentlyVisitedPlacesView,
      page: _i18.FrequentlyVisitedPlacesView,
    ),
    _i1.RouteDef(
      Routes.savePlaceView,
      page: _i19.SavePlaceView,
    ),
    _i1.RouteDef(
      Routes.vehicleSelectionView,
      page: _i20.VehicleSelectionView,
    ),
    _i1.RouteDef(
      Routes.chauffeurSelectionView,
      page: _i21.ChauffeurSelectionView,
    ),
    _i1.RouteDef(
      Routes.bookingConfirmationView,
      page: _i22.BookingConfirmationView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.WelcomeView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.WelcomeView(),
        settings: data,
      );
    },
    _i3.AuthOptionsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.AuthOptionsView(),
        settings: data,
      );
    },
    _i4.PhoneInputView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PhoneInputView(),
        settings: data,
      );
    },
    _i5.VerificationCodeView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.VerificationCodeView(),
        settings: data,
      );
    },
    _i6.EmailCollectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.EmailCollectionView(),
        settings: data,
      );
    },
    _i7.WelcomeConfirmationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.WelcomeConfirmationView(),
        settings: data,
      );
    },
    _i8.TermsConditionsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.TermsConditionsView(),
        settings: data,
      );
    },
    _i9.ModeSelectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.ModeSelectionView(),
        settings: data,
      );
    },
    _i10.PersonalInformationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.PersonalInformationView(),
        settings: data,
      );
    },
    _i11.CompanyInformationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.CompanyInformationView(),
        settings: data,
      );
    },
    _i12.PackageSelectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.PackageSelectionView(),
        settings: data,
      );
    },
    _i13.PaymentMethodView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.PaymentMethodView(),
        settings: data,
      );
    },
    _i14.CardDetailsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.CardDetailsView(),
        settings: data,
      );
    },
    _i15.NotificationPermissionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.NotificationPermissionView(),
        settings: data,
      );
    },
    _i16.ProfileCompletionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.ProfileCompletionView(),
        settings: data,
      );
    },
    _i17.AmenitiesSelectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i17.AmenitiesSelectionView(),
        settings: data,
      );
    },
    _i18.FrequentlyVisitedPlacesView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i18.FrequentlyVisitedPlacesView(),
        settings: data,
      );
    },
    _i19.SavePlaceView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i19.SavePlaceView(),
        settings: data,
      );
    },
    _i20.VehicleSelectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i20.VehicleSelectionView(),
        settings: data,
      );
    },
    _i21.ChauffeurSelectionView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i21.ChauffeurSelectionView(),
        settings: data,
      );
    },
    _i22.BookingConfirmationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i22.BookingConfirmationView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i24.NavigationService {
  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthOptionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authOptionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPhoneInputView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.phoneInputView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVerificationCodeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.verificationCodeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmailCollectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.emailCollectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeConfirmationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeConfirmationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTermsConditionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.termsConditionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToModeSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.modeSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPackageSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.packageSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentMethodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentMethodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCardDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cardDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationPermissionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationPermissionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileCompletionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileCompletionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmenitiesSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.amenitiesSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFrequentlyVisitedPlacesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.frequentlyVisitedPlacesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSavePlaceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.savePlaceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVehicleSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.vehicleSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChauffeurSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chauffeurSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBookingConfirmationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bookingConfirmationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthOptionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.authOptionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPhoneInputView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.phoneInputView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVerificationCodeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.verificationCodeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmailCollectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.emailCollectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeConfirmationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeConfirmationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTermsConditionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.termsConditionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithModeSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.modeSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPackageSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.packageSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentMethodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentMethodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCardDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cardDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationPermissionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationPermissionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileCompletionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileCompletionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmenitiesSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.amenitiesSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFrequentlyVisitedPlacesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.frequentlyVisitedPlacesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSavePlaceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.savePlaceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVehicleSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.vehicleSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChauffeurSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chauffeurSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBookingConfirmationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bookingConfirmationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
