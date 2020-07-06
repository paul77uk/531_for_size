import 'package:five_three_one_forever_app/pages/deload_page/day_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class FourDayWeekPage extends StatefulWidget {
  const FourDayWeekPage({
    Key key,
  }) : super(key: key);

  @override
  _FourDayWeekPageState createState() => _FourDayWeekPageState();
}

class _FourDayWeekPageState extends State<FourDayWeekPage>
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
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return TabBarView(
          controller: _tabController,
          children: <Widget>[
            DayPage(
              lift: 'Squat',
              index: 0,
            ),
            DayPage(
              lift: 'Bench',
              index: 1,
            ),
            DayPage(
              lift: 'Deadlift',
              index: 2,
            ),
            DayPage(
              lift: 'Press',
              index: 3,
            ),
          ],
        );

        // RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
        // RouteTile(title: 'Jump/Throws - 10 total'),
        // DataTableClass(),
        // TabBarView(controller: _tabController, children: <Widget>[

        // ]),

        // RouteTile(title: 'Assistance', route: WarmUpPage()),
        // RouteTile(
        //   title: 'Conditioning - 3-5 easy days of conditioning.',
        //   route: WarmUpPage(),
        // ),
      }),
    );
  }
}
