import 'package:flutter/material.dart';

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
          title: Text("Flex and Expanded"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
  //     Expanded(
  //       flex: 1,
  //       child: MyIcon(
  //         Icons.home,
  //       ),
  //     ),
  //     Expanded(
  //       flex: 2,
  //       child: MyIcon(
  //         Icons.search,
  //         color: Colors.orange,
  //       ),
  //     )
  //   ]);
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: Image.network(
                    "https://img2.baidu.com/it/u=3890458229,1529442621&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750",
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 200,
                            child: Image.network(
                              "https://img1.baidu.com/it/u=4238884477,642834660&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
                              fit: BoxFit.cover,
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 80,
                                    child: Image.asset(
                                      'images/1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 80,
                                    child: Image.asset('images/3.png',
                                        fit: BoxFit.cover),
                                  ))
                            ],
                          ))
                    ],
                  ),
                )),
          ],
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class MyIcon extends StatelessWidget {
  Color color;
  IconData icon;
  MyIcon(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      color: color,
      child: Icon(icon),
    );
  }
}
