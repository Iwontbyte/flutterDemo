import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: navigation());
  }
}

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
      ),
      body: const Center(
        child: Text("BottomNavigationBar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "data"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "data"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "data"),
        ],
      ),
    );
  }
}
