import 'package:meta/meta.dart';
import 'package:temperance/coverter.dart';

@immutable
class AppState {
  final double celsius;
  final double fahrenheit;
  final double kelvin;

  AppState({this.celsius, this.fahrenheit, this.kelvin});

  factory AppState.initial() {
    return AppState(
        celsius: 0.0,
        fahrenheit: celsiusToFahrenheit(0.0),
        kelvin: celsiusToKelvin(0.0));
  }

  AppState copyWith({double celsius, double fahrenheit, double kelvin}) {
    return AppState(
        celsius: celsius ?? this.celsius,
        fahrenheit: fahrenheit ?? this.fahrenheit,
        kelvin: kelvin ?? this.kelvin);
  }
}
