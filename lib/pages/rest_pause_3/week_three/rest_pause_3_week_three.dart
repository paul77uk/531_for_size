import 'package:five_three_one_forever_app/pages/rest_pause_3/week_three/rest_pause_3_day_four_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_three/rest_pause_3_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_three/rest_pause_3_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/week_three/rest_pause_3_day_two_page.dart';
import 'package:flutter/material.dart';

class RestPause3WeekThree extends StatefulWidget {
  const RestPause3WeekThree({
    Key key,
  }) : super(key: key);

  @override
  _RestPause3WeekThreeState createState() => _RestPause3WeekThreeState();
}

class _RestPause3WeekThreeState extends State<RestPause3WeekThree>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3", "DAY 4"];

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
          Tab(
            text: 'DAY 4',
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RestPause3DayOnePage(),
          RestPause3DayTwoPage(),
          RestPause3DayThreePage(),
          RestPause3DayFourPage(),
        ],
      ),
    );
  }
}
