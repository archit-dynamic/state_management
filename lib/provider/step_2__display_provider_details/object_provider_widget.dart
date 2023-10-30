import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();

    return Container(
      height: 100,
      color: Colors.purple,
      child: Column(
        children: [
          const Text("Object Provider Widget"),
          const Text("ID"),
          Text(provider.id),
        ],
      ),
    );
  }
}
