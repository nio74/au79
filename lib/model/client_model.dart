import 'package:equatable/equatable.dart';

class ClientModel extends Equatable {
  int id;
  String surname;
  String name;
  String indirizzo;

  ClientModel({
    required this.id,
    required this.surname,
    required this.name,
    required this.indirizzo,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw [id, surname, name, indirizzo];

  final clientsList = [
    ClientModel(
        id: 1, surname: 'Roggi', name: "Antonio", indirizzo: "Via Roma 94"),
    ClientModel(
        id: 2,
        surname: 'Buoncompagni',
        name: "Giovanni",
        indirizzo: "Via pinco 37 Verona"),
  ];
}
