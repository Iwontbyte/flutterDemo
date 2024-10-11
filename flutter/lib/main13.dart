import 'package:flutter/material.dart';
import './pages/navigation.dart';

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
