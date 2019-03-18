import 'package:temperance/redux/state.dart';

enum ScaleType { CELSIUS, FAHRENHEIT, KELVIN }

class TemperatureViewModel {
  final double degrees;
  final void Function(double degrees) onValueChanged;

  TemperatureViewModel({this.degrees, this.onValueChanged});

  static TemperatureViewModel fromStore(
      AppState state, ScaleType scale, Function onValueChanged) {
    switch (scale) {
      case ScaleType.CELSIUS:
        return TemperatureViewModel(
            degrees: state.celsius, onValueChanged: onValueChanged);
        break;
      case ScaleType.FAHRENHEIT:
        return TemperatureViewModel(
            degrees: state.fahrenheit, onValueChanged: onValueChanged);
        break;
      case ScaleType.KELVIN:
        return TemperatureViewModel(
            degrees: state.kelvin, onValueChanged: onValueChanged);
        break;
    }
    return TemperatureViewModel();
  }
}
