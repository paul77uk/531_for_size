import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_day_two_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingTheMonolithWeek3 extends StatefulWidget {
  const BuildingTheMonolithWeek3({
    Key key,
  }) : super(key: key);

  @override
  _BuildingTheMonolithWeek3State createState() =>
      _BuildingTheMonolithWeek3State();
}

class _BuildingTheMonolithWeek3State extends State<BuildingTheMonolithWeek3>
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
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return TabBarView(
          controller: _tabController,
          children: <Widget>[
            BuildingTheMonolithDayOnePage(
              lift: 'Squat',
              index: 0,
              twoLifts: true,
              lift2: 'Press',
              index2: 3,
            ),
            BuildingTheMonolithDayTwoPage(
              lift: 'Deadlift',
              index: 2,
              twoLifts: true,
              lift2: 'Bench',
              index2: 1,
            ),
            BuildingTheMonolithDayThreePage(
              lift: 'Squat',
              index: 0,
              twoLifts: true,
              lift2: 'Press',
              index2: 3,
            ),
          ],
        );
      }),
    );
  }
}
