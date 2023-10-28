import 'package:flutter/material.dart';
import 'package:state_management/inherited_widget/dateTimeWidget.dart';
import 'package:state_management/inherited_widget/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueKey textKey = const ValueKey<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          ApiProvider.of(context)?.api.dateAndTime ?? "",
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () async {
          debugPrint("GestureDetector onTap Called");
          final api = ApiProvider.of(context)?.api;
          debugPrint("api $api");
          final dateAndTime = await api?.getDateAndTime();
          debugPrint("dateAndTime $dateAndTime");
          setState(() {
            debugPrint("setState Called");
            textKey = ValueKey(dateAndTime);
          });
        },
        child: SizedBox.expand(
          child: Container(
            color: Colors.green,
            child: DateTimeWidget(
              key: textKey,
            ),
          ),
        ),
      ),
    );
  }
}
