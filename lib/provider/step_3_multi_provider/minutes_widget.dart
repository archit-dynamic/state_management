import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_3_multi_provider/minutes.dart';

class MinutesWidget extends StatelessWidget {
  const MinutesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final minutes = context.watch<Minutes>();

    return Container(
      height: 100,
      color: Colors.blue,
      child: Text(minutes.value),
    );
  }
}
