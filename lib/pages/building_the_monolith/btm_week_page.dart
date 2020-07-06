import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_three/beginner_prep_school_week_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_week5.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_four/btm_week4.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_week1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_week6.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_week3.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_two/btm_week2.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class BuildingTheMonolith extends StatefulWidget {
  @override
  _BuildingTheMonolithState createState() => _BuildingTheMonolithState();
}

class _BuildingTheMonolithState extends State<BuildingTheMonolith>
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
                'https://jimwendler.com/blogs/jimwendler-com/101078918-building-the-monolith-5-3-1-for-size',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Building The Monolith'),
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
          BuildingTheMonolithWeek1(),
          BuildingTheMonolithWeek2(),
          BuildingTheMonolithWeek3(),
          BuildingTheMonolithWeek4(),
          BuildingTheMonolithWeek5(),
          BuildingTheMonolithWeek6(),
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
