import 'package:five_three_one_forever_app/pages/beach_body/week_one/beach_body_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/beach_body/week_one/beach_body_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/beach_body/week_one/beach_body_day_two_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeachBodyWeek1 extends StatefulWidget {
  const BeachBodyWeek1({
    Key key,
  }) : super(key: key);

  @override
  BeachBodyWeek1State createState() => BeachBodyWeek1State();
}

class BeachBodyWeek1State extends State<BeachBodyWeek1>
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
          BeachBodyDayOnePage(),
          BeachBodyDayTwoPage(),
          BeachBodyDayThreePage(),
        ],
      ),
    );
  }
}
