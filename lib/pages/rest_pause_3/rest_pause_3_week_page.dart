import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_one/rest_pause_3_week_one.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_three/rest_pause_3_week_three.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_two/rest_pause_3_week_two.dart';

import 'package:five_three_one_forever_app/timer/main.dart';

import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class RestPause3 extends StatefulWidget {
  @override
  _RestPause3State createState() => _RestPause3State();
}

class _RestPause3State extends State<RestPause3>
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
                'https://www.t-nation.com/workouts/531-rest-pause-6-week-challenge',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Rest Pause 3'),
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
          RestPause3WeekOne(),
          RestPause3WeekTwo(),
          RestPause3WeekThree(),
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
