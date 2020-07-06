import 'package:five_three_one_forever_app/pages/boring_but_big/week_three/bbb_day_four_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_three/bbb_day_one_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_three/bbb_day_three_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_three/bbb_day_two_page.dart';
import 'package:flutter/material.dart';

class BoringButBig3 extends StatefulWidget {
  final int dayIndex;

  const BoringButBig3({Key key, this.dayIndex}) : super(key: key);

  @override
  _BoringButBig3State createState() => _BoringButBig3State();
}

class _BoringButBig3State extends State<BoringButBig3>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["DAY 1", "DAY 2", "DAY 3", 'DAY 4'];

  void initState() {
    super.initState();
    _tabController = new TabController(
        initialIndex: widget.dayIndex != null ? widget.dayIndex : 0,
        vsync: this,
        length: _tabs.length);
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
          BoringButBigDayOnePage(),
          BoringButBigDayTwoPage(),
          BoringButBigDayThreePage(),
          BoringButBigDayFourPage(),
        ],
      ),
    );
  }
}
