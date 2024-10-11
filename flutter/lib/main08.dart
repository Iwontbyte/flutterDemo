import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("feel the love"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        // alignment: WrapAlignment.spaceAround,
        children: [
          Button("all girls are the same", onPressed: () {}),
          Button("I really miss u", onPressed: () {}),
          Button("nope u don't want me", onPressed: () {}),
          Button("south", onPressed: () {}),
          Button("Deep Grenn", onPressed: () {}),
          Button("Love is just a Memory", onPressed: () {}),
          Button("Yous", onPressed: () {}),
          Button("Empty Love", onPressed: () {}),
          Button("slow down", onPressed: () {}),
          Button("don't wanna guess", onPressed: () {}),
          Button("Day dreaming", onPressed: () {}),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  var onPressed;
  var text;
  Button(this.text, {required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 209, 207, 207)),
          foregroundColor: MaterialStateProperty.all(Colors.black54),
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}
