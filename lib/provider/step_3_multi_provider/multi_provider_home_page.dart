import 'package:flutter/material.dart';
import 'package:state_management/provider/step_3_multi_provider/minutes_widget.dart';
import 'package:state_management/provider/step_3_multi_provider/seconds_widget.dart';

String now() => DateTime.now().toIso8601String();

class MultiProviderHomePage extends StatelessWidget {
  const MultiProviderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Details Home Page",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Row(
        children: [
          Expanded(child: SecondsWidget()),
          Expanded(child: MinutesWidget()),
        ],
      ),
    );
  }
}
