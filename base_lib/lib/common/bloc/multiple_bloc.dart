import 'base_bloc.dart';

abstract class MultipleBloc extends BaseBloc {
  final List<BaseBloc> blocs;

  MultipleBloc(this.blocs);

  T find<T extends BaseBloc>() {
    var type = blocs.whereType<T>();
    var t = type.first;
    return t;
  }

  @override
  void dispose() {
    blocs.forEach((bloc) {
      bloc.dispose();
    });
  }

  @override
  void initState() {
    blocs.forEach((bloc) {
      bloc.initState();
    });
  }
}
