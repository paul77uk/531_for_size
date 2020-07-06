import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_week1.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_three/six_day_rest_pause_week3.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_two/six_day_rest_pause_week2.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class SixDayRestPause extends StatefulWidget {
  @override
  _SixDayRestPauseState createState() => _SixDayRestPauseState();
}

class _SixDayRestPauseState extends State<SixDayRestPause>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WK\n1", "WK\n2", "WK\n3"];

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
                'https://muscleandbrawn.com/a-concise-guide-to-doggcrapp-training/',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('6 Day Rest Pause'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WEEK\n    1'),
            Tab(text: 'WEEK\n    2'),
            Tab(text: 'WEEK\n    3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SixDayRestPauseWeek1(),
          SixDayRestPauseWeek2(),
          SixDayRestPauseWeek3(),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName)),
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
