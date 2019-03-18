import 'package:flutter/material.dart';
import 'package:temperance/ui/converter_page.dart';

Future<void> main() async {
  runApp(TemperanceApp());
}

class TemperanceApp extends StatefulWidget {
  @override
  _TemperanceAppState createState() => _TemperanceAppState();
}

class _TemperanceAppState extends State<TemperanceApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temperance",
      home: ConverterPage(),
    );
  }
}