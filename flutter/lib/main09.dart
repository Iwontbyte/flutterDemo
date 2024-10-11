import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Closer"),
        ),
        body: ListView(
            children: _list.map((e) {
          return ListTile(
            title: Text(e),
          );
        }).toList()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _list.add("value");
            });
          },
          child: Icon(Icons.add),
        ));
  }
}
