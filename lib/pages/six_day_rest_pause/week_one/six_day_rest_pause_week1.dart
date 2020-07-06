import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_five_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_four_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_six_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/week_one/six_day_rest_pause_day_two_page.dart';
import 'package:flutter/material.dart';

class SixDayRestPauseWeek1 extends StatefulWidget {
  const SixDayRestPauseWeek1({
    Key key,
  }) : super(key: key);

  @override
  SixDayRestPauseWeek1State createState() => SixDayRestPauseWeek1State();
}

class SixDayRestPauseWeek1State extends State<SixDayRestPauseWeek1>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3", "DAY 4", "DAY 5", "DAY 6"];

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
            text: 'DAY\n   1',
          ),
          Tab(
            text: 'DAY\n   2',
          ),
          Tab(
            text: 'DAY\n   3',
          ),
          Tab(
            text: 'DAY\n   4',
          ),
          Tab(
            text: 'DAY\n   5',
          ),
          Tab(
            text: 'DAY\n   6',
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SixDayRestPauseDayOnePage(),
          SixDayRestPauseDayTwoPage(),
          SixDayRestPauseDayThreePage(),
          SixDayRestPauseDayFourPage(),
          SixDayRestPauseDayFivePage(),
          SixDayRestPauseDaySixPage(),
        ],
      ),
    );
  }
}
