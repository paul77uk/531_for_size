import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_one/bbb_week1.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_three/bbb_week3.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/week_two/bbb_week2.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BoringButBig extends StatefulWidget {
  final int weekIndex;

  const BoringButBig({Key key, this.weekIndex}) : super(key: key);
  @override
  _BoringButBigState createState() => _BoringButBigState();
}

class _BoringButBigState extends State<BoringButBig>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // List<String> _tabs = ["WEEK 1", "WEEK 2", "WEEK 3"];

  int tabs = 3;

  List<Tab> tabList = [];

  tabsMethod() {
    for (int i = 1; i <= tabs; i++) {
      tabList.add(Tab(text: 'WEEK $i'));
    }
  }

  void initState() {
    super.initState();
    tabsMethod();
    _tabController = new TabController(
        initialIndex: widget.weekIndex == null ? 0 : widget.weekIndex,
        vsync: this,
        length: tabs);
  }

  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      model.getDayIndex();
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Boring But Big'),
          bottom: TabBar(
            controller: _tabController, tabs: tabList,
            // [
            //   Tab(text: 'WEEK 1'),
            //   Tab(text: 'WEEK 2'),
            //   Tab(text: 'WEEK 3'),
            // ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            BoringButBig1(
              dayIndex: model.getmDayIndex,
            ),
            BoringButBig2(
              dayIndex: model.getmDayIndex,
            ),
            BoringButBig3(
              dayIndex: model.getmDayIndex,
            ),
          ],
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.timer,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimerHomePage(),
                ),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.refresh,
                ),
                onPressed: () {
                  model.setWeekIndex(0);
                  model.getWeekIndex();
                  model.setDayIndex(0);
                  model.getDayIndex();
                  int resetIndex;
                  setState(() {
                    for (resetIndex = 0; resetIndex < 383; resetIndex++) {
                      CheckBoxClass checkBoxClass =
                          CheckBoxClass(trueOrFalse: 'false');
                      checkBoxClass.id = model.checkboxes[resetIndex].id;
                      model.updateCheckbox(checkBoxClass);
                      print(resetIndex);
                    }
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BoringButBig(),
                    ),
                  );
                })
          ],
        ),
      );
    });
  }
}
