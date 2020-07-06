import 'package:five_three_one_forever_app/pages/rest_pause_1/week_two/rest_pause_1_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/week_two/rest_pause_1_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/week_two/rest_pause_1_day_two_page.dart';
import 'package:flutter/material.dart';

class RestPause1WeekTwo extends StatefulWidget {
  const RestPause1WeekTwo({
    Key key,
  }) : super(key: key);

  @override
  _RestPause1WeekTwoState createState() => _RestPause1WeekTwoState();
}

class _RestPause1WeekTwoState extends State<RestPause1WeekTwo>
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
          RestPause1DayOnePage(),
          RestPause1DayTwoPage(),
          RestPause1DayThreePage(),
        ],
      ),
    );
  }
}
