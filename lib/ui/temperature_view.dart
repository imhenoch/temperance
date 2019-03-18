import 'package:flutter/material.dart';

class TemperatureView extends StatefulWidget {
  @override
  _TemperatureViewState createState() => _TemperatureViewState();
}

class _TemperatureViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Text("Scale"),
                Slider(
                  min: 0,
                  max: 100,
                  value: 50,
                )
              ],
          )),
          Container(
            width: 50,
            alignment: Alignment.center,
            child: TextField(),
          )
        ],
      ),
    );
  }
}
