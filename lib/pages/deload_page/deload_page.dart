import 'package:five_three_one_forever_app/pages/deload_page/four_day_week_page.dart';
import 'package:five_three_one_forever_app/pages/deload_page/three_day_week_page.dart';
import 'package:five_three_one_forever_app/pages/deload_page/two_day_week_page.dart';
import 'package:flutter/material.dart';

class DeloadPage extends StatefulWidget {
  @override
  _DeloadPageState createState() => _DeloadPageState();
}

class _DeloadPageState extends State<DeloadPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["4 DAYS/WEEK", "3 DAYS/WEEK", "2 DAYS/WEEK"];

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deload/ 7th Week Protocol'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: '4 DAYS/WEEK',
            ),
            Tab(
              text: '3 DAYS/WEEK',
            ),
            Tab(
              text: '2 DAYS/WEEK',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          FourDayWeekPage(),
          ThreeDayWeekPage(),
          TwoDayWeekPage(),
        ],
      ),
    );
  }
}
