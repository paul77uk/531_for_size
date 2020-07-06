import 'package:five_three_one_forever_app/pages/beach_body/beach_body_week_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/beginner_prep_week_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big/boring_but_big_week_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/bbbbt_week_page.dart';
import 'package:five_three_one_forever_app/pages/building_a_bigger_yoke/building_a_bigger_yoke_week_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/btm_week_page.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/hardgainer_week_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/rest_pause_1_week_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_2/rest_pause_2_week_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/rest_pause_3_week_page.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/rest_pause_4_week_page.dart';
import 'package:five_three_one_forever_app/pages/six_day_rest_pause/six_day_rest_pause_week_page.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/vickers_rest_pause_week_page.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause_3_day/vickers_rest_pause_3_day_week_page.dart';
import 'package:five_three_one_forever_app/program_title/program_dialog.dart';

import 'package:five_three_one_forever_app/program_title/program_title_list_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class TrainingProgramsPage extends StatefulWidget {
  @override
  _TrainingProgramsPageState createState() => _TrainingProgramsPageState();
}

class _TrainingProgramsPageState extends State<TrainingProgramsPage> {
  // void initState() {
  //   super.initState();
  //   ProgramTitleDBScopedModel().loadPrograms();
  // }
  ProgramDialog dialog = ProgramDialog();

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      model.getWeekIndex();
      model.getDayIndex();
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '5/3/1 FOR SIZE',
            style: TextStyle(color: Colors.grey[300]),
          ),
        ),
        body: ListView(
          children: <Widget>[
            RouteTile(
              title: 'Beginner Prep School',
              route: BeginnerPrepWeekPage(),
            ),
            RouteTile(
              title: 'Boring But Big',
              route: BoringButBig(weekIndex: model.getmWeekIndex),
            ),
            RouteTile(
              title: 'Building the Monolith',
              route: BuildingTheMonolith(),
            ),
            RouteTile(
              title: 'Boring But Big: Beefcake Training',
              route: BoringButBigBeefCake(),
            ),
            RouteTile(
              title: 'Beach Body',
              route: BeachBody(),
            ),
            RouteTile(
              title: 'Hardgainer',
              route: HardGainer(),
            ),
            RouteTile(
              title: 'Building A Bigger Yoke',
              route: BuildingABiggerYoke(),
            ),
            RouteTile(
              title: 'Rest Pause 1',
              route: RestPause1(),
            ),
            RouteTile(
              title: 'Rest Pause 2',
              route: RestPause2(),
            ),
            RouteTile(
              title: 'Rest Pause 3',
              route: RestPause3(),
            ),
            RouteTile(
              title: 'Rest Pause 4',
              route: RestPause4(),
            ),
            RouteTile(
              title: 'Vickers Rest Pause',
              route: VickersRestPause(),
            ),
            RouteTile(
              title: 'Vickers Rest Pause 3 Day',
              route: VickersRestPause3Day(),
            ),
            RouteTile(
              title: '6 Day Rest Pause',
              route: SixDayRestPause(),
            ),
            RouteTile(
              title: 'Create Program',
              route: ProgramTitleListPage(),
            ),
          ],
        ),
      );
    });
  }
}
