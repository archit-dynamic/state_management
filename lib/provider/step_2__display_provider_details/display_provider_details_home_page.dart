import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/cheap_widget.dart';
import 'package:state_management/provider/step_2__display_provider_details/expensive_widget.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider_widget.dart';

class DisplayProviderDetailsHomePage extends StatelessWidget {
  const DisplayProviderDetailsHomePage({super.key});

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
      body: Column(
        children: [
          const Row(
            children: [
              Expanded(child: CheapWidget()),
              Expanded(child: ExpensiveWidget()),
            ],
          ),
          const Row(
            children: [
              Expanded(child: ObjectProviderWidget()),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().start();
                },
                child: const Text("Start"),
              ),
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().stop();
                },
                child: const Text("Stop"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
