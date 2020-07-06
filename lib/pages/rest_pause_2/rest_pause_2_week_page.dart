import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_2/week_one/rest_pause_2_week_one.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_2/week_two/rest_pause_2_week_two.dart';
import 'package:five_three_one_forever_app/timer/main.dart';

import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class RestPause2 extends StatefulWidget {
  @override
  _RestPause2State createState() => _RestPause2State();
}

class _RestPause2State extends State<RestPause2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WEEK 1", "WEEK 2"];

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
                Text('Rest Pause 2'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WEEK 1'),
            Tab(text: 'WEEK 2'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RestPause2WeekOne(),
          RestPause2WeekTwo(),
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
