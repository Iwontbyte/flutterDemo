import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 45,
        title: SizedBox(
          height: 40,
          child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
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
    ));
  }
}
