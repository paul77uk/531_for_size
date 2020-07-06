import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_day_four_page.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_day_two_page.dart';
import 'package:flutter/material.dart';

class Hardgainer1 extends StatefulWidget {
  const Hardgainer1({
    Key key,
  }) : super(key: key);

  @override
  _Hardgainer1State createState() => _Hardgainer1State();
}

class _Hardgainer1State extends State<Hardgainer1>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3", 'DAY 4'];

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
          HardgainerDayOnePage(),
          HardgainerDayTwoPage(),
          HardgainerDayThreePage(),
          HardgainerDayFourPage(),
        ],
      ),
    );
  }
}
