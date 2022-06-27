import 'dart:io';

class AwsArguments {
  String? string;
  int? index;
  String? route;
  String? id;
  File? file;

  AwsArguments({
    this.string,
    this.index,
    this.id,
    this.route,
    this.file,
  });
}
