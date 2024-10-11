import 'package:flutter/material.dart';
import './shopping.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Shopping(
                  titile: 'Ameili',
                  id: 15,
                );
              }));
            },
            child: const Text("Rout to Shopping")),
      ],
    ));
  }
}
