import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class SixDayRestPauseDaySixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 951,
              cbIndex2: 952,
              cbIndex3: 953,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 60,
            cbIndex1: 954,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 75,
            cbIndex: 955,
          ),
          NewPRWidget(
            index: 30,
            percentage: 75,
          ),
          RouteTile(
            title: 'Pull Up',
            route: AlternativeRPset(
              cbIndex1: 956,
              cbIndex2: 957,
              cbIndex3: 958,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 17,
            cbIndex1: 959,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 960,
              cbIndex2: 961,
              cbIndex3: 962,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 963,
          ),
          RouteTile(
            title: 'KettleBell Swing',
            route: AlternativeRPset(
              cbIndex1: 964,
              cbIndex2: 965,
              cbIndex3: 966,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 37,
            percentage: 60,
            cbIndex1: 967,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 37,
            percentage1: 75,
            cbIndex1: 968,
          ),
          ListTile(
            title: Center(child: Text('Sprints')),
          ),
          Divider(
            height: 0,
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
