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
              cbIndex1: 771,
              cbIndex2: 772,
              cbIndex3: 773,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 50,
            cbIndex1: 774,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 70,
            cbIndex: 775,
          ),
          NewPRWidget(
            index: 30,
            percentage: 70,
          ),
          RouteTile(
            title: 'Pull Up',
            route: AlternativeRPset(
              cbIndex1: 776,
              cbIndex2: 777,
              cbIndex3: 778,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 17,
            cbIndex1: 779,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 780,
              cbIndex2: 781,
              cbIndex3: 782,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 783,
          ),
          RouteTile(
            title: 'KettleBell Swing',
            route: AlternativeRPset(
              cbIndex1: 784,
              cbIndex2: 785,
              cbIndex3: 786,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 37,
            percentage: 50,
            cbIndex1: 787,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 37,
            percentage1: 70,
            cbIndex1: 788,
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
