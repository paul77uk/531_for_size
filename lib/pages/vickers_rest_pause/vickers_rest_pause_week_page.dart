import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/week_one/vickers_rest_pause_week_one.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/week_three/vickers_rest_pause_week_three.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/week_two/vickers_rest_pause_week_two.dart';

import 'package:five_three_one_forever_app/timer/main.dart';

import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class VickersRestPause extends StatefulWidget {
  @override
  _VickersRestPauseState createState() => _VickersRestPauseState();
}

class _VickersRestPauseState extends State<VickersRestPause>
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
                Text('Vickers Rest Pause'),
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
          VickersRestPauseWeekOne(),
          VickersRestPauseWeekTwo(),
          VickersRestPauseWeekThree(),
          // VickersRestPauseWeekTwo(),
          // VickersRestPauseWeekThree(),
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
