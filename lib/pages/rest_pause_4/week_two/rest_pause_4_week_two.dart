import 'package:five_three_one_forever_app/pages/rest_pause_4/week_two/rest_pause_4_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/week_two/rest_pause_4_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/week_two/rest_pause_4_day_two_page.dart';
import 'package:flutter/material.dart';

class RestPause4WeekTwo extends StatefulWidget {
  const RestPause4WeekTwo({
    Key key,
  }) : super(key: key);

  @override
  _RestPause4WeekTwoState createState() => _RestPause4WeekTwoState();
}

class _RestPause4WeekTwoState extends State<RestPause4WeekTwo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3"];

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        controller: _tabController,
        tabs: [
          Tab(
            text: 'DAY 1',
          ),
          Tab(
            text: 'DAY 2',
          ),
          Tab(
            text: 'DAY 3',
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RestPause4DayOnePage(),
          RestPause4DayTwoPage(),
          RestPause4DayThreePage(),
          // RestPause4DayTwoPage(),
          // RestPause4DayThreePage(),
        ],
      ),
    );
  }
}
