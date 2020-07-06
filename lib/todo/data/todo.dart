class Todo {
  int id;
  String name;
  String description;

  Todo(
    this.name,
    this.description,
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
    };
  }

  static Todo fromMap(Map<String, dynamic> map) {
    return Todo(map['name'], map['description']);
  }
}
