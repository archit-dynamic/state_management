import 'package:flutter/material.dart';
import 'package:state_management/provider/step_3_multi_provider/multi_provider_home_page.dart';

@immutable
class Minutes {
  final String value;
  Minutes() : value = now();
}
