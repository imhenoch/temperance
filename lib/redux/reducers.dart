import 'package:temperance/coverter.dart';
import 'package:temperance/redux/actions.dart';
import 'package:temperance/redux/state.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ChangeCelsiusAction) {
    return _changeCelsius(state, action.degrees);
  } else if (action is ChangeFahrenheitAction) {
    return _changeFahrenheit(state, action.degrees);
  } else if (action is ChangeKelvinAction) {
    return _changeKelvin(state, action.degrees);
  } else {
    return state;
  }
}

AppState _changeCelsius(AppState state, double celsius) {
  if (celsius > 537) {
    celsius = 537;
  } else if (celsius < -573) {
    celsius = -573;
  }
  return state.copyWith(
      celsius: celsius,
      fahrenheit: celsiusToFahrenheit(celsius),
      kelvin: celsiusToKelvin(celsius));
}

AppState _changeFahrenheit(AppState state, double fahrenheit) {
  return state.copyWith(
      celsius: fahrenheitToCelsius(fahrenheit),
      fahrenheit: fahrenheit,
      kelvin: fahrenheitToKelvin(fahrenheit));
}

AppState _changeKelvin(AppState state, double kelvin) {
  if(kelvin > 810) {
    kelvin = 810;
  } else if(kelvin < -300) {
    kelvin = -300;
  }
  return state.copyWith(
      celsius: kelvinToCelsius(kelvin),
      fahrenheit: kelvinToFahrenheit(kelvin),
      kelvin: kelvin);
}
