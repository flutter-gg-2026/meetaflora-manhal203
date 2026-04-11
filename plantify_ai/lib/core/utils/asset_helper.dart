import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class AssetHelper {
  static Future<File> assetToFile(String path) async {
    final byteData = await rootBundle.load(path);

    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/temp.jpg');

    await file.writeAsBytes(byteData.buffer.asUint8List());

    return file;
  }
}