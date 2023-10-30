import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_1/breadcrumb_provider.dart';
import 'package:state_management/provider/step_1/breadcrumbs_widget.dart';

class ProviderHomePage extends StatelessWidget {
  const ProviderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Consumer<BreadCrumbProvider>(
            builder: (context, value, child) {
              return BredCrumbsWidget(breadCrumbs: value.items);
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/new");
            },
            child: const Text("Add new Bread Crumb"),
          ),
          TextButton(
            onPressed: () {
              context.read<BreadCrumbProvider>().reset();
            },
            child: const Text("Reset"),
          ),
        ],
      ),
    );
  }
}
