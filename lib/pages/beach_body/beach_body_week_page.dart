import 'package:five_three_one_forever_app/pages/beach_body/week_one/beach_body_week1.dart';
import 'package:five_three_one_forever_app/pages/beach_body/week_three/beach_body_week3.dart';
import 'package:five_three_one_forever_app/pages/beach_body/week_two/beach_body_week2.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class BeachBody extends StatefulWidget {
  @override
  _BeachBodyState createState() => _BeachBodyState();
}

class _BeachBodyState extends State<BeachBody>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WK\n1", "WK\n2", "WK\n3", 'WK\n4', 'WK\n5', 'WK\n6'];

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
                'https://jimwendler.com/blogs/jimwendler-com/5-3-1-beach-body-performance-based-challenge',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Beach Body'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WK\n  1'),
            Tab(text: 'WK\n  2'),
            Tab(text: 'WK\n  3'),
            Tab(text: 'WK\n  4'),
            Tab(text: 'WK\n  5'),
            Tab(text: 'WK\n  6'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BeachBodyWeek1(),
          BeachBodyWeek2(),
          BeachBodyWeek3(),
          BeachBodyWeek1(),
          BeachBodyWeek2(),
          BeachBodyWeek3(),
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
