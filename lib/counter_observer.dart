import 'package:bloc/bloc.dart';

class CounterObnserver extends BlocObserver {
  const CounterObnserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
