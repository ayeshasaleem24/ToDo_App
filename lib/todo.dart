class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Buy Grocery', isDone: true ),
      ToDo(id: '02', todoText: 'Take Out Dogs', isDone: true ),
      ToDo(id: '03', todoText: 'Bussiness meeting with CEO', ),
      ToDo(id: '04', todoText: 'Do Maths HomeWork', ),
    ];
  }
}