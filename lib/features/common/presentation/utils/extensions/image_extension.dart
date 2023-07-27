import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intopic/config/app_constants.dart';

extension ImageStringX on String {
  ImageProvider get imageProvider {
    final isURL = this.isURL;
    final isBase64 = contains('base64,');

    if (isEmpty || (!isURL && !isBase64)) {
      return const NetworkImage(AppConstants.defaultImageUrl);
    }

    if (isURL) {
      return NetworkImage(this);
    }

    return MemoryImage(const Base64Decoder().convert(split('base64,')[1]));
  }
}
