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
          title: Text("Buttons"),
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
    return ListView(
      children: [
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: const Text('Text Button'),
                  onPressed: () {
                    print("TextButton");
                  },
                ),
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: const Text('ElevatedButton'),
                  onPressed: () {
                    print("ElevatedButton");
                  },
                ),
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  child: const Text('Outline Button'),
                  onPressed: () {
                    print("OutlinedButton");
                  },
                ),
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      print("Icon Button");
                    },
                    icon: const Icon(Icons.thumb_down))
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    label: Text("ElevatedButton.icon"))
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.icecream),
                    label: Text("TextButton.icon"))
              ],
            )),
        Divider(),
        SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.wallpaper),
                    label: Text("TextButton.icon"))
              ],
            )),
      ],
    );
  }
}
