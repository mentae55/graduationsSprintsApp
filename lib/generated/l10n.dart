// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
    'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
    'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Shopping App`
  String get appTitle {
    return Intl.message(
      'Shopping App',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to My App`
  String get introWelcome {
    return Intl.message(
      'Welcome to My App',
      name: 'introWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourProducts {
    return Intl.message(
      'Our Products',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `Hot Offers`
  String get hotOffers {
    return Intl.message(
      'Hot Offers',
      name: 'hotOffers',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get successSignUp {
    return Intl.message(
      'Account created successfully',
      name: 'successSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Account sign-in successfully`
  String get successSignIn {
    return Intl.message(
      'Account sign-in successfully',
      name: 'successSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `First letter must be uppercase`
  String get uppercase {
    return Intl.message(
      'First letter must be uppercase',
      name: 'uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get match {
    return Intl.message(
      'Passwords do not match',
      name: 'match',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Item added to the cart`
  String get itemAdded {
    return Intl.message(
      'Item added to the cart',
      name: 'itemAdded',
      desc: '',
      args: [],
    );
  }

  /// `Great Deals`
  String get greatDeals {
    return Intl.message(
      'Great Deals',
      name: 'greatDeals',
      desc: '',
      args: [],
    );
  }

  /// `The best offers are waiting for you`
  String get bestOffers {
    return Intl.message(
      'The best offers are waiting for you',
      name: 'bestOffers',
      desc: '',
      args: [],
    );
  }

  /// `Discover our unique selection of products and exclusive offers 🎉`
  String get discoverSelection {
    return Intl.message(
      'Discover our unique selection of products and exclusive offers 🎉',
      name: 'discoverSelection',
      desc: '',
      args: [],
    );
  }

  /// `Shoes`
  String get productShoes {
    return Intl.message(
      'Shoes',
      name: 'productShoes',
      desc: '',
      args: [],
    );
  }

  /// `Bag`
  String get productBag {
    return Intl.message(
      'Bag',
      name: 'productBag',
      desc: '',
      args: [],
    );
  }

  /// `Watch`
  String get productWatch {
    return Intl.message(
      'Watch',
      name: 'productWatch',
      desc: '',
      args: [],
    );
  }

  /// `Headphones`
  String get productHeadphones {
    return Intl.message(
      'Headphones',
      name: 'productHeadphones',
      desc: '',
      args: [],
    );
  }

  /// `Laptop`
  String get productLaptop {
    return Intl.message(
      'Laptop',
      name: 'productLaptop',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get productCamera {
    return Intl.message(
      'Camera',
      name: 'productCamera',
      desc: '',
      args: [],
    );
  }

  /// `$50`
  String get priceShoes {
    return Intl.message(
      '\$50',
      name: 'priceShoes',
      desc: '',
      args: [],
    );
  }

  /// `$80`
  String get priceBag {
    return Intl.message(
      '\$80',
      name: 'priceBag',
      desc: '',
      args: [],
    );
  }

  /// `$120`
  String get priceWatch {
    return Intl.message(
      '\$120',
      name: 'priceWatch',
      desc: '',
      args: [],
    );
  }

  /// `$60`
  String get priceHeadphones {
    return Intl.message(
      '\$60',
      name: 'priceHeadphones',
      desc: '',
      args: [],
    );
  }

  /// `$900`
  String get priceLaptop {
    return Intl.message(
      '\$900',
      name: 'priceLaptop',
      desc: '',
      args: [],
    );
  }

  /// `$400`
  String get priceCamera {
    return Intl.message(
      '\$400',
      name: 'priceCamera',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),  // إضافة العربية
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}