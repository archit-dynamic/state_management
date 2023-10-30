import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_2__display_provider_details/display_provider_details_home_page.dart';
import 'package:state_management/provider/step_2__display_provider_details/object_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// Provider main.dart file code
    /// Step 2

    return ChangeNotifierProvider(
      create: (_) => ObjectProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DisplayProviderDetailsHomePage(),
      ),
    );

    /// Step 1
    /*return ChangeNotifierProvider(
      create: (_) => BreadCrumbProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        /// Inherited Widget main.dart file code
        // home: ApiProvider(api: Api(), child: const InheritedWidgetHomePage()),
        /// Provider main.dart file code
        home: const ProviderHomePage(),
        routes: {
          "/new": (context) => const NewBreadCrumbWidget(),
        },
      ),
    );*/
  }
}
