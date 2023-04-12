import 'dart:io';

/// [AwsArguments] es una clase generica que se puede usar para enviar argumentos de una pantalla a otra.
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
    this.email,
    this.password,
    this.result,
  });
}
