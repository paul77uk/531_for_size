import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/beginner_prep_school_week_1.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_three/beginner_prep_school_week_three.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_two/beginner_prep_school_week_two.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class BeginnerPrepWeekPage extends StatefulWidget {
  @override
  _BeginnerPrepWeekPageState createState() => _BeginnerPrepWeekPageState();
}

class _BeginnerPrepWeekPageState extends State<BeginnerPrepWeekPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WEEK 1", "WEEK 2", "WEEK 3"];

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: LaunchUrl(
            url:
                'https://jimwendler.com/blogs/jimwendler-com/101065094-5-3-1-for-a-beginner',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Beginners Prep School'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'WEEK 1',
            ),
            Tab(
              text: 'WEEK 2',
            ),
            Tab(
              text: 'WEEK 3',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BeginnerPrepSchoolWeekOne(),
          BeginnerPrepSchoolWeekTwo(),
          BeginnerPrepSchoolWeekThree(),
        ],
      ),
    );
  }
}
