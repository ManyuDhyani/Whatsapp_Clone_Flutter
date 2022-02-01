// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/Windows/callDetail.dart';
import 'package:whatsapp_clone_flutter/Windows/chats.dart';
import 'package:whatsapp_clone_flutter/Windows/palette.dart';
import 'package:whatsapp_clone_flutter/Windows/statusDetail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //for top nav bar
  static const List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {
          //setState here...........
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                print("Search pressed");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("More Vert pressed");
              },
              icon: const Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          Chats(),
          statusDetailWindow(),
          callDetailWindow(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Palette.navColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print("Open Chats"));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Palette.navColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print("Open Status"));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Palette.navColor,
          child: const Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print("Open Call"));
    } else {
      return null;
    }
  }
}
