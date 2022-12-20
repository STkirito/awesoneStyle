import 'dart:io';

import 'package:awesonestyle/awesonestyle.dart';

class AwsArguments {
  String? string;
  int? index;
  String? route;
  String? id;
  File? file;
  List? list;
  Map? map;
  Object? object;
  Type? type;
  dynamic dinamic;
  var mudable;
  List<CalendarEventData>? events;
  String? email;
  String? password;
  Object? result;

  AwsArguments({
    this.string,
    this.index,
    this.id,
    this.route,
    this.file,
    this.list,
    this.map,
    this.object,
    this.type,
    this.dinamic,
    this.mudable,
    this.events,
    this.email,
    this.password,
    this.result,
  });
}
