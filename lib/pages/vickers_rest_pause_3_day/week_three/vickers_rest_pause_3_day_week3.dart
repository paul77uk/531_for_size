import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_three/vickers_rest_pause_3_day_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_three/vickers_rest_pause_3_day_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/week_three/vickers_rest_pause_3_day_day_two_page.dart';
import 'package:flutter/material.dart';

class VickersRestPause3DayWeek3 extends StatefulWidget {
  const VickersRestPause3DayWeek3({
    Key key,
  }) : super(key: key);

  @override
  VickersRestPause3DayWeek3State createState() =>
      VickersRestPause3DayWeek3State();
}

class VickersRestPause3DayWeek3State extends State<VickersRestPause3DayWeek3>
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
          VickersRestPause3DayDayOnePage(),
          VickersRestPause3DayDayTwoPage(),
          VickersRestPause3DayDayThreePage(),
        ],
      ),
    );
  }
}
