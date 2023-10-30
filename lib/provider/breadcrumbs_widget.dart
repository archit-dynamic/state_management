import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:state_management/provider/breadcrumb.dart';

class BredCrumbsWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;

  const BredCrumbsWidget({super.key, required this.breadCrumbs});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map(
        (breadCrumb) {
          return Text(
            breadCrumb.title,
            style: TextStyle(
              color: breadCrumb.isActive ? Colors.blueAccent : Colors.black,
            ),
          );
        },
      ).toList(),
    );
  }
}
