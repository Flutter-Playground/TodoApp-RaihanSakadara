import 'package:flutter/material.dart';
import 'package:latihan6/main.dart';
import 'package:latihan6/widget/add_todo_dialog_widget.dart';
import 'package:latihan6/widget/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: tabs[selectedIndex],
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AddToDoDialogWidget(),
              barrierDismissible: false,
            ),
          ),
        ),
      ),
    );
  }
}
