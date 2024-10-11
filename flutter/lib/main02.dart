import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("this is app bar"),
          ),
          body: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            width: 120,
            child: Column(children: [
              Container(
                child: Image.asset(
                  'images/1.png',
                  fit: BoxFit.cover,
                ),
                height: 100,
                width: 100,
              ),
              const Text("我真的")
            ]),
          ),
          Container(
            width: 120,
            child: Column(children: [
              Container(
                child: Image.asset(
                  'images/2.png',
                  fit: BoxFit.cover,
                ),
                height: 100,
                width: 100,
              ),
              const Text("艾克接收不到")
            ]),
          ),
          Container(
            width: 120,
            child: Column(children: [
              Container(
                child: Image.asset(
                  'images/3.png',
                  fit: BoxFit.cover,
                ),
                height: 100,
                width: 100,
              ),
              const Text("求八十多")
            ]),
          ),
          Container(
            width: 120,
            child: Column(children: [
              Container(
                child: Image.asset(
                  'images/4.png',
                  fit: BoxFit.cover,
                ),
                height: 100,
                width: 100,
              ),
              const Text("zhengmingwosi")
            ]),
          ),
          Container(
            width: 120,
            child: Column(children: [
              Container(
                child: Image.asset(
                  'images/6.jpg',
                  fit: BoxFit.cover,
                ),
                height: 100,
                width: 100,
              ),
              const Text("zhengmingwosi")
            ]),
          ),
        ]));
  }
}
