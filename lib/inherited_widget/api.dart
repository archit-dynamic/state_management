import 'package:flutter/material.dart';

class Api {
  String? dateAndTime;

  Future<String> getDateAndTime() {
    debugPrint("getDateAndTime Called");
    return Future.delayed(
      const Duration(seconds: 1),
      () => DateTime.now().toIso8601String(),
    ).then((value) {
      dateAndTime = value;
      return value;
    });
  }
}
