import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_one/vickers_rest_pause_3_day_week1.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_three/vickers_rest_pause_3_day_week3.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_two/vickers_rest_pause_3_day_week2.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class VickersRestPause3Day extends StatefulWidget {
  @override
  _VickersRestPause3DayState createState() => _VickersRestPause3DayState();
}

class _VickersRestPause3DayState extends State<VickersRestPause3Day>
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
                'https://muscleandbrawn.com/a-concise-guide-to-doggcrapp-training/',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Vickers Rest Pause 3 Day'),
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
          VickersRestPause3DayWeek1(),
          VickersRestPause3DayWeek2(),
          VickersRestPause3DayWeek3(),
          VickersRestPause3DayWeek1(),
          VickersRestPause3DayWeek2(),
          VickersRestPause3DayWeek3(),
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
