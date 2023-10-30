import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_3_multi_provider/seconds.dart';

class SecondsWidget extends StatelessWidget {
  const SecondsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<Seconds>();

    return Container(
      height: 100,
      color: Colors.yellow,
      child: Text(seconds.value),
    );
  }
}
