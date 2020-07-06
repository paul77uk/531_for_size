import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/bp_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/bp_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/bp_day_two_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepSchoolWeekOne extends StatefulWidget {
  const BeginnerPrepSchoolWeekOne({
    Key key,
  }) : super(key: key);

  @override
  _BeginnerPrepSchoolWeekOneState createState() =>
      _BeginnerPrepSchoolWeekOneState();
}

class _BeginnerPrepSchoolWeekOneState extends State<BeginnerPrepSchoolWeekOne>
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
            BeginnerPrepDayOnePage(
              lift: 'Squat',
              index: 0,
              twoLifts: true,
              lift2: 'Bench',
              index2: 1,
            ),
            BeginnerPrepDayTwoPage(
              lift: 'Deadlift',
              index: 2,
              twoLifts: true,
              lift2: 'Press',
              index2: 3,
            ),
            BeginnerPrepDayThreePage(
              lift: 'Squat',
              index: 0,
              twoLifts: true,
              lift2: 'Bench',
              index2: 1,
            ),
          ],
        );
      }),
    );
  }
}
