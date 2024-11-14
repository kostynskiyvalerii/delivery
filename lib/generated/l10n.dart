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

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
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

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Scan TTN`
  String get scanTtn {
    return Intl.message(
      'Scan TTN',
      name: 'scanTtn',
      desc: '',
      args: [],
    );
  }

  /// `Scan TTN`
  String get scanTtnButton {
    return Intl.message(
      'Scan TTN',
      name: 'scanTtnButton',
      desc: '',
      args: [],
    );
  }

  /// `Point the camera at the invoice barcode`
  String get pointCameraToBarcode {
    return Intl.message(
      'Point the camera at the invoice barcode',
      name: 'pointCameraToBarcode',
      desc: '',
      args: [],
    );
  }

  /// `Press the button to start scanning TTN`
  String get pressButtonToScanTtn {
    return Intl.message(
      'Press the button to start scanning TTN',
      name: 'pressButtonToScanTtn',
      desc: '',
      args: [],
    );
  }

  /// `KKZ Delivery`
  String get kkzDelivery {
    return Intl.message(
      'KKZ Delivery',
      name: 'kkzDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Select silo`
  String get selectSilo {
    return Intl.message(
      'Select silo',
      name: 'selectSilo',
      desc: '',
      args: [],
    );
  }

  /// `Sector № {number}`
  String farmNumber(Object number) {
    return Intl.message(
      'Sector № $number',
      name: 'farmNumber',
      desc: '',
      args: [number],
    );
  }

  /// `TTN № {number}`
  String ttnNumber(Object number) {
    return Intl.message(
      'TTN № $number',
      name: 'ttnNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Full`
  String get full {
    return Intl.message(
      'Full',
      name: 'full',
      desc: '',
      args: [],
    );
  }

  /// `Entrance`
  String get entrance {
    return Intl.message(
      'Entrance',
      name: 'entrance',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Car license plate`
  String get carLicensePlate {
    return Intl.message(
      'Car license plate',
      name: 'carLicensePlate',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enterPassword {
    return Intl.message(
      'Enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `The car number is not registered. Contact the manager`
  String get carNumberNotRegistered {
    return Intl.message(
      'The car number is not registered. Contact the manager',
      name: 'carNumberNotRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Password is incorrect. Contact the manager`
  String get incorrectPassword {
    return Intl.message(
      'Password is incorrect. Contact the manager',
      name: 'incorrectPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please wait, loading`
  String get loadingPleaseWait {
    return Intl.message(
      'Please wait, loading',
      name: 'loadingPleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `No server response`
  String get noServerResponse {
    return Intl.message(
      'No server response',
      name: 'noServerResponse',
      desc: '',
      args: [],
    );
  }

  /// `Please rescan TTN`
  String get tryRescanTtn {
    return Intl.message(
      'Please rescan TTN',
      name: 'tryRescanTtn',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect code`
  String get incorrectCode {
    return Intl.message(
      'Incorrect code',
      name: 'incorrectCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm completion`
  String get confirmCompletion {
    return Intl.message(
      'Confirm completion',
      name: 'confirmCompletion',
      desc: '',
      args: [],
    );
  }

  /// `TTN task`
  String get ttnTask {
    return Intl.message(
      'TTN task',
      name: 'ttnTask',
      desc: '',
      args: [],
    );
  }

  /// `silo`
  String get silo {
    return Intl.message(
      'silo',
      name: 'silo',
      desc: '',
      args: [],
    );
  }

  /// `Sector`
  String get farm {
    return Intl.message(
      'Sector',
      name: 'farm',
      desc: '',
      args: [],
    );
  }

  /// `KKZ Distribution`
  String get distributionKKZ {
    return Intl.message(
      'KKZ Distribution',
      name: 'distributionKKZ',
      desc: '',
      args: [],
    );
  }

  /// `Select task`
  String get selectTask {
    return Intl.message(
      'Select task',
      name: 'selectTask',
      desc: '',
      args: [],
    );
  }

  /// `Select Shipment`
  String get selectShipment {
    return Intl.message(
      'Select Shipment',
      name: 'selectShipment',
      desc: '',
      args: [],
    );
  }

  /// `Task № {number}`
  String taskNumber(Object number) {
    return Intl.message(
      'Task № $number',
      name: 'taskNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Total actual`
  String get totalActual {
    return Intl.message(
      'Total actual',
      name: 'totalActual',
      desc: '',
      args: [],
    );
  }

  /// `Select poultry house`
  String get selectPoultryHouse {
    return Intl.message(
      'Select poultry house',
      name: 'selectPoultryHouse',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Growth`
  String get growth {
    return Intl.message(
      'Growth',
      name: 'growth',
      desc: '',
      args: [],
    );
  }

  /// `Shipment № {number}`
  String shipmentNumber(Object number) {
    return Intl.message(
      'Shipment № $number',
      name: 'shipmentNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Poultry house`
  String get poultryHouse {
    return Intl.message(
      'Poultry house',
      name: 'poultryHouse',
      desc: '',
      args: [],
    );
  }

  /// `Poultry № {number}`
  String poultryHouseNumber(Object number) {
    return Intl.message(
      'Poultry № $number',
      name: 'poultryHouseNumber',
      desc: '',
      args: [number],
    );
  }

  /// `silo № {number}`
  String siloNumber(Object number) {
    return Intl.message(
      'silo № $number',
      name: 'siloNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Confirm execution`
  String get confirmExecution {
    return Intl.message(
      'Confirm execution',
      name: 'confirmExecution',
      desc: '',
      args: [],
    );
  }

  /// `silo № {number} is empty`
  String siloEmpty(Object number) {
    return Intl.message(
      'silo № $number is empty',
      name: 'siloEmpty',
      desc: '',
      args: [number],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `No feed`
  String get noFeed {
    return Intl.message(
      'No feed',
      name: 'noFeed',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
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
      Locale.fromSubtags(languageCode: 'uk'),
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
