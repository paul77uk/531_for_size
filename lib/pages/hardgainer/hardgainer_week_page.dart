import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_one/bbbbt_week1.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_three/bbbbt_week3.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_two/bbbbt_week2.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_week1.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_three/hardgainer_week3.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_two/hardgainer_week2.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class HardGainer extends StatefulWidget {
  @override
  _HardGainerState createState() => _HardGainerState();
}

class _HardGainerState extends State<HardGainer>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WEEK 1", "WEEK 2", "WEEK 3"];

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: LaunchUrl(
            url:
                'https://jimwendler.com/blogs/jimwendler-com/5-3-1-for-hardgainers',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Hardgainers'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WEEK 1'),
            Tab(text: 'WEEK 2'),
            Tab(text: 'WEEK 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Hardgainer1(),
          Hardgainer2(),
          Hardgainer3(),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => LandingPage(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.timer,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => TimerHomePage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
