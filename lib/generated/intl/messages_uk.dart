// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(number) => "Дільниця № ${number}";

  static String m1(number) => "Приміщення № ${number}";

  static String m2(number) => "Рейс № ${number}";

  static String m3(number) => "Склад № ${number} порожній";

  static String m4(number) => "Склад № ${number}";

  static String m5(number) => "Завдання № ${number}";

  static String m6(number) => "ТТН № ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "carLicensePlate":
            MessageLookupByLibrary.simpleMessage("Державний номер автомобіля"),
        "carNumberNotRegistered": MessageLookupByLibrary.simpleMessage(
            "Вказаний державний номер авто не зареєстрований. Зверніться до керівника"),
        "confirmCompletion":
            MessageLookupByLibrary.simpleMessage("Підтвердити виконання"),
        "confirmExecution":
            MessageLookupByLibrary.simpleMessage("Підтвердити виконання"),
        "distributionKKZ": MessageLookupByLibrary.simpleMessage("Розподіл ККЗ"),
        "email": MessageLookupByLibrary.simpleMessage("Пошта"),
        "empty": MessageLookupByLibrary.simpleMessage("Порожній"),
        "enter": MessageLookupByLibrary.simpleMessage("Увійти"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Введіть пароль"),
        "entrance": MessageLookupByLibrary.simpleMessage("Вхід"),
        "farm": MessageLookupByLibrary.simpleMessage("Дільниця"),
        "farmNumber": m0,
        "finish": MessageLookupByLibrary.simpleMessage("Фініш"),
        "full": MessageLookupByLibrary.simpleMessage("Повний"),
        "growth": MessageLookupByLibrary.simpleMessage("Ріст"),
        "incorrectCode":
            MessageLookupByLibrary.simpleMessage("Неправильний код"),
        "incorrectPassword": MessageLookupByLibrary.simpleMessage(
            "Пароль невірний. Зверніться до керівника"),
        "kkzDelivery": MessageLookupByLibrary.simpleMessage("Доставка товару"),
        "loadingPleaseWait":
            MessageLookupByLibrary.simpleMessage("Зачекайте, йде завантаження"),
        "logout": MessageLookupByLibrary.simpleMessage("Вийти"),
        "next": MessageLookupByLibrary.simpleMessage("Далі"),
        "noFeed": MessageLookupByLibrary.simpleMessage("Нема корму"),
        "noServerResponse": MessageLookupByLibrary.simpleMessage(
            "Не отримано відповідь від сервера"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Номер телефону"),
        "pointCameraToBarcode": MessageLookupByLibrary.simpleMessage(
            "Наведіть камеру на штрих-код накладної"),
        "poultryHouse": MessageLookupByLibrary.simpleMessage("Приміщення"),
        "poultryHouseNumber": m1,
        "pressButtonToScanTtn": MessageLookupByLibrary.simpleMessage(
            "Натисніть на кнопку, щоб почати сканування ТТН"),
        "required": MessageLookupByLibrary.simpleMessage("Потрібно"),
        "scanTtn": MessageLookupByLibrary.simpleMessage("Скануйте ТТН"),
        "scanTtnButton": MessageLookupByLibrary.simpleMessage("Сканувати ТТН"),
        "selectPoultryHouse":
            MessageLookupByLibrary.simpleMessage("Оберіть пташник"),
        "selectShipment": MessageLookupByLibrary.simpleMessage("Оберіть РЕЙС"),
        "selectSilo": MessageLookupByLibrary.simpleMessage("Оберіть склад"),
        "selectTask": MessageLookupByLibrary.simpleMessage("Оберіть завдання"),
        "shipmentNumber": m2,
        "silo": MessageLookupByLibrary.simpleMessage("Склад"),
        "siloEmpty": m3,
        "siloNumber": m4,
        "start": MessageLookupByLibrary.simpleMessage("Старт"),
        "taskNumber": m5,
        "totalActual": MessageLookupByLibrary.simpleMessage("Факт загальний"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Спробувати ще раз"),
        "tryRescanTtn": MessageLookupByLibrary.simpleMessage(
            "Будь ласка, спробуйте ще раз відсканувати ТТН"),
        "ttnNumber": m6,
        "ttnTask": MessageLookupByLibrary.simpleMessage("Завдання ТТН")
      };
}
