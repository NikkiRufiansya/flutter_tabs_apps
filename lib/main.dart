
import 'package:flutter/material.dart';

import 'Popular.dart';
import 'home.dart';
import 'news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  TabsMyAppState createState() => TabsMyAppState();
}

class TabsMyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //hide banner debung
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo FLutter"),
          bottom: TabBar(
            controller: controller,
            tabs: <Tab>[
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.note),),
              Tab(icon: Icon(Icons.poll),)
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Home(),
            Popular(),
            News()
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


}



