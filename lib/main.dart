import 'package:flutter/material.dart';
import 'package:quran_flutter_app/home_page.dart';
import 'package:quran_flutter_app/theme.dart';
import 'package:quran_flutter_app/util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Quicksand", "Quicksand");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.light(),
      home: HomePage(),
    );
  }
}
