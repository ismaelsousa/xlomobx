import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlomobx/screens/base/base_screen.dart';
import 'package:xlomobx/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(const MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize('zwtXtzahqcfOt5MJZ4a7LPaFVutXvXUuDKIALofx',
      'https://parseapi.back4app.com',
      clientKey: 'BqRQy1Wns6zYx6vV3EmiPfTJJsydDjhvGa5j3PGD',
      autoSendSessionId: true,
      debug: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.orange,
          ),
          appBarTheme:
              const AppBarTheme(elevation: 0, backgroundColor: Colors.purple),
          scaffoldBackgroundColor: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.purple),
      home: BaseScreen(),
    );
  }
}
