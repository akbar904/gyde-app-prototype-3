// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i9;
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
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

class Routes {
  static const welcomeView = '/welcome-view';

  static const authOptionsView = '/auth-options-view';

  static const phoneInputView = '/phone-input-view';

  static const verificationCodeView = '/verification-code-view';

  static const emailCollectionView = '/email-collection-view';

  static const welcomeConfirmationView = '/welcome-confirmation-view';

  static const termsConditionsView = '/terms-conditions-view';

  static const all = <String>{
    welcomeView,
    authOptionsView,
    phoneInputView,
    verificationCodeView,
    emailCollectionView,
    welcomeConfirmationView,
    termsConditionsView,
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
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.WelcomeView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.WelcomeView(),
        settings: data,
      );
    },
    _i3.AuthOptionsView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.AuthOptionsView(),
        settings: data,
      );
    },
    _i4.PhoneInputView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PhoneInputView(),
        settings: data,
      );
    },
    _i5.VerificationCodeView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.VerificationCodeView(),
        settings: data,
      );
    },
    _i6.EmailCollectionView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.EmailCollectionView(),
        settings: data,
      );
    },
    _i7.WelcomeConfirmationView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.WelcomeConfirmationView(),
        settings: data,
      );
    },
    _i8.TermsConditionsView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.TermsConditionsView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i10.NavigationService {
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
}
