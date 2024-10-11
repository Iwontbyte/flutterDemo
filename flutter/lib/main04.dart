import 'package:flutter/material.dart';
import './ListData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Bar"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initGridView() {
    List<Widget> tempList = [];
    for (var i = 0; i < listData.length; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Container(
          child: Column(
            children: [
              Image.asset(listData[i]['imageUrl']!),
              SizedBox(
                height: 10,
              ),
              Text("$i个元素 ")
            ],
          ),
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    //   return GridView.count(
    //       padding: EdgeInsets.all(10),
    //       crossAxisCount: 2,
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 10,
    //       childAspectRatio: 0.85,
    //       children: _initGridView());
    // }
    return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.9,
        ),
        children: _initGridView());
  }
}
