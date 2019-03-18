import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temperance/redux/state.dart';
import 'package:temperance/redux/store.dart';
import 'package:temperance/ui/converter_page.dart';

Future<void> main() async {
  runApp(TemperanceApp(createStore()));
}

class TemperanceApp extends StatefulWidget {
  final Store<AppState> store;

  TemperanceApp(this.store);

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
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        title: "Temperance",
        home: ConverterPage(),
      ),
    );
  }
}
