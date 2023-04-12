import 'dart:io';
import 'package:path/path.dart';

enum AwsStorageType { file, directory, bytes, string }

class AwsStorage {
  static Future<AwsStorageResult<Directory>?> createDirectory(
      String path) async {
    Directory dir = await Directory(path).create(recursive: true);
    if (dir.path.isEmpty) {
      return null;
    }
    return AwsStorageResult<Directory>(dir);
  }

  static Future<bool> directoryExist(String path) async =>
      await Directory(path).exists();
  static Future<bool> generalFileExist(String path) async =>
      await File(path).exists();

  static Future<FileSystemEntity> directoryDelete(String path) async =>
      await Directory(path).delete(recursive: true);

  static Future<AwsStorageResult<String>?> copy(
      {String? from,
      required String to,
      required AwsStorageType type,
      List<int>? bytes,
      String? string}) async {
    switch (type) {
      case AwsStorageType.directory:
        if (from != null) {
          if (to.isNotEmpty) {
            return AwsStorageResult((await _copyPathDirectory(from, to)).path);
          }
        }
        break;
      case AwsStorageType.file:
        if (from != null) {
          if (to.isNotEmpty) {
            return AwsStorageResult<String>(
                (await _copyPathFile(from, to)).path);
          }
        }

        break;
      case AwsStorageType.bytes:
        if (bytes != null) {
          return AwsStorageResult<String>(
              (await _copyPathBytes(bytes, to)).path);
        }
        break;
      case AwsStorageType.string:
        if (string != null) {
          return AwsStorageResult<String>((await _copyString(string, to)).path);
        }
        break;
    }
    return null;
  }

  static Future<Directory> _copyPathDirectory(String from, String to) async {
    late String copyTo;
    await Directory(to).create(recursive: true);
    await for (final file in Directory(from).list(recursive: true)) {
      copyTo = join(to, relative(file.path, from: from));
      if (file is Directory) {
        await Directory(copyTo).create(recursive: true);
      } else if (file is File) {
        await File(file.path).copy(copyTo);
      } else if (file is Link) {
        await Link(copyTo).create(await file.target(), recursive: true);
      }
    }
    return Directory(to);
  }

  static Future<File> _copyPathFile(String from, String to) async {
    return File(from)..copy(join(to));
  }

  static Future<File> _copyString(String string, String to) async {
    return File(join(to))
      ..createSync(recursive: true)
      ..writeAsString(string);
  }

  static Future<File> _copyPathBytes(List<int> bytes, String to) async {
    return File(join(to))
      ..createSync(recursive: true)
      ..writeAsBytesSync(bytes);
  }
}

class AwsStorageResult<T> {
  T data;

  AwsStorageResult(this.data);
}
