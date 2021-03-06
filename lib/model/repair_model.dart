import 'package:equatable/equatable.dart';

class RepairModel extends Equatable {
  final int code;
  final String name;
  final String object;
  final String workTodo;

  RepairModel({
    required this.code,
    required this.name,
    required this.object,
    required this.workTodo,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [code, name, object, workTodo];

  RepairModel copyWith({
    int? code,
    String? name,
    String? object,
    String? workTodo,
  }) {
    return RepairModel(
      code: code ?? this.code,
      name: name ?? this.name,
      object: object ?? this.object,
      workTodo: workTodo ?? this.workTodo,
    );
  }
}

final repairList = [
  RepairModel(
      code: 1,
      name: 'Mike',
      object: 'ring',
      workTodo: 'workTodo saldare e portare a misura'),
  RepairModel(code: 2, name: 'Jhon', object: 'Bracialet', workTodo: 'workTodo'),
  RepairModel(code: 2, name: 'Pinco', object: 'ring', workTodo: 'workTodo'),
  RepairModel(code: 4, name: 'Mike', object: 'ring', workTodo: 'workTodo'),
  RepairModel(code: 5, name: 'Jhon', object: 'Bracialet', workTodo: 'workTodo'),
  RepairModel(code: 6, name: 'Pinco', object: 'ring', workTodo: 'workTodo'),
  RepairModel(code: 7, name: 'Mike', object: 'ring', workTodo: 'workTodo'),
];
