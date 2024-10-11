import 'package:flutter/material.dart';

var listData = [
  {
    "title": "wozhendeaini",
    "author": "jujubuqingyi",
    "imageUrl": "images/1.png",
  },
  {
    "title": "EmptyLove",
    "author": "lulleaux/KidPrincess",
    "imageUrl": "images/2.png",
  },
  {
    "title": "Slow Down",
    "author": "Madnap",
    "imageUrl": "images/3.png",
  },
  {
    "title": "Yours",
    "author": "maye",
    "imageUrl": "images/4.png",
  },
  {
    "title": "Strange to Hear",
    "author": "Sports",
    "imageUrl": "images/5.png",
  },
  {
    "title": "Deep Grenn",
    "author": "Christian Kuria",
    "imageUrl": "images/6.jpg",
  },
];

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
          title: const Text("Dianpeiliuli"),
        ),
        body: const Homepage(),
      ),
    );
  }
}

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   List<Widget> _getListViewWidget() {
//     var listViewWidget = <Widget>[];
//     for (var i = 0; i < listData.length; i++) {
//       listViewWidget.add(ListTile(
//         leading: Image.asset(
//           '${listData[i]["imageUrl"]}',
//           fit: BoxFit.cover,
//         ),
//         title: Text("${listData[i]["title"]}"),
//         subtitle: Text("${listData[i]["author"]}"),
//       ));
//     }
//     return listViewWidget;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(children: _getListViewWidget());
//   }
// }

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // List<Widget> _getListViewWidget() {
  //   var listViewWidget = <Widget>[];
  //   for (var i = 0; i < listData.length; i++) {
  //     listViewWidget.add(ListTile(
  //       leading: Image.asset(
  //         '${listData[i]["imageUrl"]}',
  //         fit: BoxFit.cover,
  //       ),
  //       title: Text("${listData[i]["title"]}"),
  //       subtitle: Text("${listData[i]["author"]}"),
  //     ));
  //   }
  //   return listViewWidget;
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) => ListTile(
              leading: Image.asset(
                listData[index]["imageUrl"]!,
                fit: BoxFit.cover,
              ),
              title: Text(listData[index]["title"]!),
              subtitle: Text(listData[index]["author"]!),
            ));
  }
}
