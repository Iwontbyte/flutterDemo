import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text("data"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            child: Text("关注"),
          ),
          Tab(
            child: Text("视频"),
          ),
          Tab(
            child: Text("热门"),
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        const SizedBox(
          height: 80,
          width: 80,
          child: Text("关注"),
        ),
        Container(
          child: Text("shipin"),
        ),
        Container(
          child: Text("renmen"),
        ),
      ]),
    );
  }
}
