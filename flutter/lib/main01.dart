import 'package:flutter/material.dart';
import 'CustomIcon.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("AppBar title")),
            body: const MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(
              CustomIcon.order,
              size: 30,
              color: Colors.red,
            ),
            title: Text("全部订单")),
        Divider(),
        ListTile(
            leading: Icon(
              CustomIcon.heart,
              size: 30,
              color: Colors.green,
            ),
            title: Text("我的收藏")),
        Divider(),
        ListTile(
            leading: Icon(
              CustomIcon.shouhuo,
              size: 30,
              color: Colors.yellow,
            ),
            title: Text("待收货")),
        Divider(),
        ListTile(
            leading: Icon(
              CustomIcon.wallet,
              size: 30,
              color: Colors.green,
            ),
            title: Text("待付款")),
        Divider(),
        ListTile(
            leading: Icon(
              CustomIcon.customerService,
              size: 30,
              color: Colors.grey,
            ),
            title: Text("在线客服")),
        Divider(),
      ],
    );
  }
}
