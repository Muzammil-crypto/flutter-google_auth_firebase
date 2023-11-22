import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ToColor on String {
  Color get toColor => Color.fromARGB(
        255,
        getRgbValues(this).first,
        getRgbValues(this)[1],
        getRgbValues(this).last,
      );
}

List<int> getRgbValues(String str) {
  final List<int> list = [];
  final x = str.split(",");
  list.add(int.parse(x.first.substring(4)));
  list.add(int.parse(x[1]));
  list.add(int.parse(x.last.substring(0, x.last.length - 1)));
  return list;
}

extension JsonToList on Map<String, dynamic> {
  List<T>? jsonToList<T>(String key) {
    return this[key] == null
        ? null
        : (this[key] is List
            ? List<T>.from((this[key] as List).map((x) => x))
            : [this[key] as T]);
  }
}

bool getFlag(int? number) => number == 1;

extension JsonToDate on Map<String, dynamic> {
  String? toDate(String key) => this[key] == null
      ? null
      : DateFormat("y-MM-dd").format(DateTime.parse(this[key] as String));
}

extension DateToFormatString on DateTime {
  String toFormattedDateTimeString() => DateFormat("MMMM dd, yyyy").format(this);
}

extension DateToNumberFormatString on DateTime {
  String toFormattedNumberDateTimeString() =>
      DateFormat("y-MM-dd").format(this);
}

String get currentTimeFormated => DateFormat.Hms().format(DateTime.now());

String formattedTime(DateTime dateTime) => DateFormat("jm").format(dateTime);

extension RawStringToDateAndTime on String {
  String toDateAndTime() =>
      DateFormat.yMMMd().add_jm().format(DateTime.parse(this));
}

extension ToDateTime on TimeOfDay {
  DateTime toDateTime() => DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        hour,
        minute,
      );
}
