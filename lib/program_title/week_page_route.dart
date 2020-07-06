import 'package:five_three_one_forever_app/pages/boring_but_big/week_one/bbb_day_four_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_one/bbb_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_one/bbb_day_two_page.dart';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'program_title_db/program_title_model.dart';

class WeekPageRoute extends StatefulWidget {
  final int dayIndex;
  final ProgramTitleModel programTitleModel;

  const WeekPageRoute({Key key, this.dayIndex, this.programTitleModel})
      : super(key: key);
  @override
  _WeekPageRouteState createState() => _WeekPageRouteState();
}

class _WeekPageRouteState extends State<WeekPageRoute>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3", 'DAY 4'];

  SharedPreferences prefs;

  void initState() {
    super.initState();

    _tabController =
        new TabController(initialIndex: 0, vsync: this, length: _tabs.length);
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
          // DayOnePage(widget.programTitleModel),
          BoringButBigDayTwoPage(),
          BoringButBigDayThreePage(),
          BoringButBigDayFourPage(),
        ],
      ),
    );
  }
}
