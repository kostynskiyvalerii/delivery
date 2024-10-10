// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(number) => "Bunker № ${number} is empty";

  static String m1(number) => "Bunker № ${number}";

  static String m2(number) => "Flight № ${number}";

  static String m3(number) => "Sector № ${number}";

  static String m4(number) => "Task № ${number}";

  static String m5(number) => "TTN № ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "bunker": MessageLookupByLibrary.simpleMessage("Bunker"),
        "bunkerEmpty": m0,
        "bunkerNumber": m1,
        "carLicensePlate":
            MessageLookupByLibrary.simpleMessage("Car license plate"),
        "carNumberNotRegistered": MessageLookupByLibrary.simpleMessage(
            "The car number is not registered. Contact the manager"),
        "confirmCompletion":
            MessageLookupByLibrary.simpleMessage("Confirm completion"),
        "confirmExecution":
            MessageLookupByLibrary.simpleMessage("Confirm execution"),
        "distributionKKZ":
            MessageLookupByLibrary.simpleMessage("KKZ Distribution"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "empty": MessageLookupByLibrary.simpleMessage("Empty"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Enter password"),
        "entrance": MessageLookupByLibrary.simpleMessage("Entrance"),
        "finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "flightNumber": m2,
        "full": MessageLookupByLibrary.simpleMessage("Full"),
        "growth": MessageLookupByLibrary.simpleMessage("Growth"),
        "incorrectCode": MessageLookupByLibrary.simpleMessage("Incorrect code"),
        "incorrectPassword": MessageLookupByLibrary.simpleMessage(
            "Password is incorrect. Contact the manager"),
        "kkzDelivery": MessageLookupByLibrary.simpleMessage("KKZ Delivery"),
        "loadingPleaseWait":
            MessageLookupByLibrary.simpleMessage("Please wait, loading"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noFeed": MessageLookupByLibrary.simpleMessage("No feed"),
        "noServerResponse":
            MessageLookupByLibrary.simpleMessage("No server response"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
        "pointCameraToBarcode": MessageLookupByLibrary.simpleMessage(
            "Point the camera at the invoice barcode"),
        "poultryHouse": MessageLookupByLibrary.simpleMessage("Poultry house"),
        "pressButtonToScanTtn": MessageLookupByLibrary.simpleMessage(
            "Press the button to start scanning TTN"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "scanTtn": MessageLookupByLibrary.simpleMessage("Scan TTN"),
        "scanTtnButton": MessageLookupByLibrary.simpleMessage("Scan TTN"),
        "sector": MessageLookupByLibrary.simpleMessage("Sector"),
        "sectorNumber": m3,
        "selectBunker": MessageLookupByLibrary.simpleMessage("Select bunker"),
        "selectPoultryHouse":
            MessageLookupByLibrary.simpleMessage("Select poultry house"),
        "selectSector": MessageLookupByLibrary.simpleMessage("Select sector"),
        "selectTask": MessageLookupByLibrary.simpleMessage("Select task"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "taskNumber": m4,
        "totalActual": MessageLookupByLibrary.simpleMessage("Total actual"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "tryRescanTtn":
            MessageLookupByLibrary.simpleMessage("Please rescan TTN"),
        "ttnNumber": m5,
        "ttnTask": MessageLookupByLibrary.simpleMessage("TTN task")
      };
}