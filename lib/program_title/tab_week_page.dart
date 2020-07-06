import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/program_title/week_page_route.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'program_title_db/program_title_model.dart';

class WeekPage extends StatefulWidget {
  final int weekIndex;
  final int dayIndex;
  final ProgramTitleModel programTitleModel;

  const WeekPage(
      {Key key, this.weekIndex, this.dayIndex, this.programTitleModel})
      : super(key: key);
  @override
  _WeekPageState createState() => _WeekPageState();
}

class _WeekPageState extends State<WeekPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // List<String> _tabs = ["WEEK 1", "WEEK 2", "WEEK 3"];
  DbHelper helper = DbHelper();
  List<Tab> tabList = [];
  List<WeekPageRoute> weekPageRouteList = [];

  tabsMethod() {
    for (int i = 1; i <= widget.weekIndex; i++) {
      tabList.add(Tab(text: 'WEEK $i'));
    }
  }

  weekIndexMethod() {
    for (int i = 1; i <= widget.weekIndex; i++) {
      weekPageRouteList.add(WeekPageRoute(
        dayIndex: tabList.length,
      ));
    }
  }

  void initState() {
    super.initState();
    helper.getPrograms();
    tabsMethod();
    weekIndexMethod();
    print(widget.weekIndex);
    _tabController = new TabController(
      initialIndex: 0,
      vsync: this,
      length: widget.weekIndex,
    );
  }

  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      weekIndexMethod();
      model.getDayIndex();
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.programTitleModel.title),
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
          children: [
            WeekPageRoute(
              dayIndex: tabList.length,
              programTitleModel: widget.programTitleModel,
            ),
            WeekPageRoute(
              dayIndex: tabList.length,
            ),
            WeekPageRoute(
              dayIndex: tabList.length,
            )
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
                      builder: (context) => WeekPage(),
                    ),
                  );
                })
          ],
        ),
      );
    });
  }
}
