import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temperance/redux/actions.dart';
import 'package:temperance/redux/state.dart';
import 'package:temperance/view_models.dart';

class TemperatureView extends StatelessWidget {
  final ScaleType scaleType;
  final String scale;

  TemperatureView({this.scale, this.scaleType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Column(children: [
              Text(this.scale),
              StoreConnector<AppState, TemperatureViewModel>(
                converter: (store) => TemperatureViewModel.fromStore(
                    state: store.state,
                    scale: this.scaleType,
                    onValueChanged: (degrees) =>
                        _changeDegrees(store, degrees)),
                builder: (_, TemperatureViewModel vm) {
                  return Slider(
                    min: -600,
                    max: 600,
                    value: vm.degrees,
                    onChanged: vm.onValueChanged,
                  );
                },
              )
            ]),
          ),
          Container(
            width: 65,
            alignment: Alignment.center,
            child: StoreConnector<AppState, TemperatureViewModel>(
              converter: (store) => TemperatureViewModel.fromStore(
                  state: store.state,
                  scale: this.scaleType,
                  onInputChanged: (input) => _changeInputDegrees(store, input)),
              builder: (_, TemperatureViewModel vm) {
                var _controller =
                    TextEditingController(text: vm.degrees.toStringAsFixed(2));
                return TextField(
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  onSubmitted: vm.onInputChanged,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _changeInputDegrees(Store store, String input) {
    var degrees = 0.0;
    if (input.isNotEmpty) {
      degrees = double.tryParse(input);
      if (degrees == null) {
        degrees = 0.0;
      }
    }
    _changeDegrees(store, degrees);
  }

  void _changeDegrees(Store store, double degrees) {
    switch (scaleType) {
      case ScaleType.CELSIUS:
        store.dispatch(ChangeCelsiusAction(degrees: degrees));
        break;
      case ScaleType.FAHRENHEIT:
        store.dispatch(ChangeFahrenheitAction(degrees: degrees));
        break;
      case ScaleType.KELVIN:
        store.dispatch(ChangeKelvinAction(degrees: degrees));
        break;
    }
  }
}
