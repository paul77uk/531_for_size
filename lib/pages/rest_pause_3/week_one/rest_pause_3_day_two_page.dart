import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause3DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1294,
            cbIndex2: 1295,
            cbIndex3: 1296,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1297,
            cbIndex2: 1298,
            cbIndex3: 1299,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 65,
            cbIndex: 1299,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
          ),
          OneSetWarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1300,
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 0,
            percentage: 60,
            cbIndex: 1301,
            reps: '15+',
          ),
          NewPRWidget(
            index: 0,
            percentage: 60,
          ),
          LightBodyWeightAssistance(
            liftIndex: 12,
            title: 'Ab Wheel',
            cbIndex1: 1326,
            cbIndex2: 1327,
            cbIndex3: 1327,
          ),
          Divider(height: 0),
          RouteTile(
            title: 'Conditioning - 3-4 days of easy conditioning.',
            route: ConditioningPage(),
          ),
          RouteTile(
            title: 'Notes',
            route: Notes(),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
