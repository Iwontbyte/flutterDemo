import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  List<String> list = ["111", "222"];
  final _globalKey = GlobalKey<AnimatedListState>();
  Widget _buildItem(index) {
    return ListTile(
        title: Text(list[index]),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            _deleteItem(index);
          },
        ));
  }

  _deleteItem(index) {
    _globalKey.currentState!.removeItem(index, (context, animation) {
      var _item = _buildItem(index);
      list.removeAt(index);
      return FadeTransition(
        opacity: animation,
        child: _item,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AnimatedList"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            list.add("33333");
            _globalKey.currentState!.insertItem(list.length - 1);
          },
        ),
        body: AnimatedList(
          key: _globalKey,
          initialItemCount: list.length,
          itemBuilder: ((context, index, animation) {
            return FadeTransition(
                opacity: animation,
                child: ListTile(
                  title: _buildItem(index),
                ));
          }),
        ),
      ),
    );
  }
}
