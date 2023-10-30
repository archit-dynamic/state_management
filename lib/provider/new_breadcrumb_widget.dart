import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/breadcrumb.dart';
import 'package:state_management/provider/breadcrumb_provider.dart';

class NewBreadCrumbWidget extends StatefulWidget {
  const NewBreadCrumbWidget({super.key});

  @override
  State<NewBreadCrumbWidget> createState() => _NewBreadCrumbWidgetState();
}

class _NewBreadCrumbWidgetState extends State<NewBreadCrumbWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add new bread crumb",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "Add new bread crumb here....",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                final breadCrumb = BreadCrumb(
                  isActive: false,
                  name: controller.text,
                );
                context.read<BreadCrumbProvider>().add(breadCrumb);
                Navigator.of(context).pop();
              }
            },
            child: const Text(
              "Add",
            ),
          ),
        ],
      ),
    );
  }
}
