import 'package:flutter/material.dart';
import 'package:state_management/inherited_widget/api.dart';
import 'package:state_management/inherited_widget/home_page.dart';
import 'package:state_management/inherited_widget/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ApiProvider(api: Api(), child: const HomePage()),
    );
  }
}
