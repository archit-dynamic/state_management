import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/expensive_object.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
      (provider) => provider.expensiveObject,
    );

    return Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          const Text("Expensive Widget"),
          const Text("Last Updated"),
          Text(expensiveObject.lastUpdated),
        ],
      ),
    );
  }
}
