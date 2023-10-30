import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/cheap_object.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
      (provider) => provider.cheapObject,
    );

    return Container(
      height: 100,
      color: Colors.yellow,
      child: Column(
        children: [
          const Text("Cheap Widget"),
          const Text("Last Updated"),
          Text(cheapObject.lastUpdated),
        ],
      ),
    );
  }
}
