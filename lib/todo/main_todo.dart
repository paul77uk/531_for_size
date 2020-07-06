import 'package:flutter/material.dart';
import 'todo_screen.dart';
import 'data/todo.dart';
import 'bloc/todo_bloc.dart';

class MainTodo extends StatefulWidget {
  @override
  _MainTodoState createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  TodoBloc todoBloc;
  List<Todo> todos;

  @override
  void initState() {
    todoBloc = TodoBloc();
    super.initState();
  }

  @override
  void dispose() {
    todoBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Todo todo = Todo('', '');
    todos = todoBloc.todoList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
        child: StreamBuilder<List<Todo>>(
          stream: todoBloc.todos,
          initialData: todos,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(title: Text("set${index + 1}")),
                      ListTile(
                          title: Text(
                              "${int.parse(snapshot.data[0]) / 100 * 70}")),
                    ],
                  );
                });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoScreen(todo, true)),
          );
        },
      ),
    );
  }
}
