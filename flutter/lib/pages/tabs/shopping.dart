import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  final String titile;
  final int id;
  const Shopping({super.key, this.titile = "Shopping", required this.id});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  void initState() {
    super.initState();
    print(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.icecream_outlined),
      ),
      appBar: AppBar(
        title: Text(widget.titile),
      ),
      body: const Center(
        child: Text("Shopping"),
      ),
    );
  }
}
