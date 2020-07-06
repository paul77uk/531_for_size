import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_press_data_table_day_one.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_squat_data_table_day_one.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingTheMonolithDayOnePage extends StatelessWidget {
  const BuildingTheMonolithDayOnePage({
    Key key,
    this.lift,
    this.index,
    this.lift2,
    // this.liftTable,
    this.index2,
    this.twoLifts = false,
  }) : super(key: key);

  final String lift;
  final int index;
  final String lift2;
  final int index2;
  // final BPLiftDataTable liftTable;
  final bool twoLifts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),

            // DataTableClass(),

            BTMSquatDataTableDayOne(
              index: index,
              lift: lift,
              checkIndex0: 484,
              checkIndex1: 485,
              checkIndex2: 486,
              checkIndex3: 487,
              checkIndex4: 488,
              checkIndex5: 489,
              checkIndex6: 490,
              checkIndex7: 491,
              checkIndex8: 492,
              checkIndex9: 493,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 75),
              eightyPercent: model.percentageOfTrainingMax(index, 85),
              ninetyPercent: model.percentageOfTrainingMax(index, 95),
              fslOne: model.percentageOfTrainingMax(index, 95),
              fslTwo: model.percentageOfTrainingMax(index, 95),
              fslThree: model.percentageOfTrainingMax(index, 95),
              fslFour: model.percentageOfTrainingMax(index, 95),
            ),

            BTMPressDataTableDayOne(
              index2: index2,
              lift: lift2,
              checkIndex0: 494,
              checkIndex1: 495,
              checkIndex2: 496,
              checkIndex3: 497,
              checkIndex4: 498,
              checkIndex5: 499,
              checkIndex6: 500,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 75),
              eightyPercent: model.percentageOfTrainingMax(index2, 85),
              ninetyPercent: model.percentageOfTrainingMax(index2, 95),
              fslOne: model.percentageOfTrainingMax(index2, 75),
            ),
            AssistanceTotalReps(
              exercise: 'Chins',
              reps: '100',
              exercise2: 'Dips',
              reps2: '100 - 200',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 70,
              reps: '20',
              cbIndex1: 715,
              cbIndex2: 716,
              cbIndex3: 717,
              cbIndex4: 718,
              cbIndex5: 719,
            ),
            RouteTile(
              title: 'Conditioning - 3-4 days of easy conditioning.',
              route: ConditioningPage(),
            ),
            Padding(padding: EdgeInsets.all(20)),
          ],
        );
      }),
    );
  }
}
