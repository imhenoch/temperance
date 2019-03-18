import 'package:flutter/material.dart';
import 'package:temperance/ui/temperature_view.dart';
import 'package:temperance/view_models.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              TemperatureView(scale: "Celsius", scaleType: ScaleType.CELSIUS),
              TemperatureView(
                  scale: "Fahrenheit", scaleType: ScaleType.FAHRENHEIT),
              TemperatureView(scale: "Kelvin", scaleType: ScaleType.KELVIN),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          )),
    );
  }
}
