import 'package:au79/model/riparazioni_model.dart';
import 'package:bloc/bloc.dart';

class ListaRiparazioniBloc
    extends Bloc<ListaRiparazioniBlocEvent, ListaRiparazioniBlocState> {
  ListaRiparazioniBloc() : super(ListaRiparazioniBlocStateLoading()) {
    on<ListaRiparazioniBlocEventInit>((event, emit) async {
      emit(ListaRiparazioniBlocStateLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(ListaRiparazioniBlocStateLoaded(riparazioniLista));
    });
  }
}

abstract class ListaRiparazioniBlocEvent {}

class ListaRiparazioniBlocEventInit extends ListaRiparazioniBlocEvent {}

abstract class ListaRiparazioniBlocState {}

class ListaRiparazioniBlocStateLoading extends ListaRiparazioniBlocState {}

class ListaRiparazioniBlocStateLoaded extends ListaRiparazioniBlocState {
  List<RiparazioniModel> riparazioni;
  ListaRiparazioniBlocStateLoaded(this.riparazioni);
}
