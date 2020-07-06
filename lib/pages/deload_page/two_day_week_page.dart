import 'package:five_three_one_forever_app/pages/deload_page/day_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class TwoDayWeekPage extends StatefulWidget {
  const TwoDayWeekPage({
    Key key,
  }) : super(key: key);

  @override
  _TwoDayWeekPageState createState() => _TwoDayWeekPageState();
}

class _TwoDayWeekPageState extends State<TwoDayWeekPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2"];

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
        ],
      ),
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return TabBarView(
          controller: _tabController,
          children: <Widget>[
            DayPage(
              lift: 'Squat',
              index: 0,
              twoLifts: true,
              lift2: 'Bench',
              index2: 1,
            ),
            DayPage(
              lift: 'Deadlift',
              index: 2,
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
