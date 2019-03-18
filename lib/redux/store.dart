import 'package:redux/redux.dart';
import 'package:temperance/redux/state.dart';
import 'package:temperance/redux/reducers.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial()
  );
}