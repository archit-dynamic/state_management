import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/step_3_multi_provider/minutes.dart';
import 'package:state_management/provider/step_3_multi_provider/multi_provider_home_page.dart';
import 'package:state_management/provider/step_3_multi_provider/seconds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// Provider main.dart file code
    /// Step 3 multi provider

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
        providers: [
          StreamProvider.value(
            value: Stream<Seconds>.periodic(
                const Duration(seconds: 1), (value) => Seconds()),
            initialData: Seconds(),
          ),
          StreamProvider.value(
            value: Stream<Minutes>.periodic(
                const Duration(minutes: 1), (value) => Minutes()),
            initialData: Minutes(),
          ),
        ],
        child: const MultiProviderHomePage(),
      ),
    );

    /// Step 2 display provider details

    /* return ChangeNotifierProvider(
      create: (_) => ObjectProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DisplayProviderDetailsHomePage(),
      ),
    );*/

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
