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
        appBar: AppBar(title: Text('AspectRatio')),
        body: MyHomePage(),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(10),
//           elevation: 10,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             children: const [
//               ListTile(
//                 title: Text(
//                   "张三",
//                   style: TextStyle(fontSize: 28),
//                 ),
//                 subtitle: Text("高级软件工程师"),
//               ),
//               ListTile(
//                 title: Text("电话:231646213"),
//               ),
//               ListTile(
//                 title: Text("地址:四川省成都市高新区"),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initAspectRatio() {
    var temp = listData.map((value) {
      return Card(
        margin: const EdgeInsets.all(10),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  value["imageUrl"]!,
                  fit: BoxFit.cover,
                )),
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                value["imageUrl"]!,
                fit: BoxFit.cover,
              )),
              title: Text(value["title"]!),
              subtitle: Text(value["author"]!),
            )
          ],
        ),
      );
    });
    return temp.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initAspectRatio());
  }
}
