import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_two/btm_press_data_table_day_one.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_two/btm_squat_data_table_day_one.dart';

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
              checkIndex0: 257,
              checkIndex1: 258,
              checkIndex2: 259,
              checkIndex3: 260,
              checkIndex4: 261,
              checkIndex5: 262,
              checkIndex6: 263,
              checkIndex7: 264,
              checkIndex8: 265,
              checkIndex9: 266,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fslOne: model.percentageOfTrainingMax(index, 85),
              fslTwo: model.percentageOfTrainingMax(index, 85),
              fslThree: model.percentageOfTrainingMax(index, 85),
              fslFour: model.percentageOfTrainingMax(index, 85),
            ),

            BTMPressDataTableDayOne(
              index2: index2,
              lift: lift2,
              checkIndex0: 267,
              checkIndex1: 268,
              checkIndex2: 269,
              checkIndex3: 270,
              checkIndex4: 271,
              checkIndex5: 272,
              checkIndex6: 273,
              // checkIndex7: 214,
              // checkIndex8: 215,
              // checkIndex9: 216,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 65),
              eightyPercent: model.percentageOfTrainingMax(index2, 75),
              ninetyPercent: model.percentageOfTrainingMax(index2, 85),
              fslOne: model.percentageOfTrainingMax(index2, 65),
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
              percentage: 55,
              reps: '20',
              cbIndex1: 616,
              cbIndex2: 617,
              cbIndex3: 618,
              cbIndex4: 619,
              cbIndex5: 620,
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
