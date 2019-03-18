import 'package:temperance/redux/state.dart';

enum ScaleType { CELSIUS, FAHRENHEIT, KELVIN }

class TemperatureViewModel {
  final double degrees;
  final void Function(double degrees) onValueChanged;
  final void Function(String input) onInputChanged;

  TemperatureViewModel(
      {this.degrees, this.onValueChanged, this.onInputChanged});

  static TemperatureViewModel fromStore(
      {AppState state,
      ScaleType scale,
      // ignore: avoid_init_to_null
      Function onValueChanged = null,
      // ignore: avoid_init_to_null
      Function onInputChanged = null}) {
    switch (scale) {
      case ScaleType.CELSIUS:
        return TemperatureViewModel(
            degrees: state.celsius,
            onValueChanged: onValueChanged,
            onInputChanged: onInputChanged);
        break;
      case ScaleType.FAHRENHEIT:
        return TemperatureViewModel(
            degrees: state.fahrenheit,
            onValueChanged: onValueChanged,
            onInputChanged: onInputChanged);
        break;
      case ScaleType.KELVIN:
        return TemperatureViewModel(
            degrees: state.kelvin,
            onValueChanged: onValueChanged,
            onInputChanged: onInputChanged);
        break;
    }
    return TemperatureViewModel();
  }
}
