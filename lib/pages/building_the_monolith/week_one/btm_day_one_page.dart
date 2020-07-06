import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps_3.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_press_data_table_day_one.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_squat_data_table_day_one.dart';

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
              checkIndex0: 197,
              checkIndex1: 198,
              checkIndex2: 199,
              checkIndex3: 200,
              checkIndex4: 201,
              checkIndex5: 202,
              checkIndex6: 203,
              checkIndex7: 204,
              checkIndex8: 205,
              checkIndex9: 206,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 70),
              eightyPercent: model.percentageOfTrainingMax(index, 80),
              ninetyPercent: model.percentageOfTrainingMax(index, 90),
              fslOne: model.percentageOfTrainingMax(index, 90),
              fslTwo: model.percentageOfTrainingMax(index, 90),
              fslThree: model.percentageOfTrainingMax(index, 90),
              fslFour: model.percentageOfTrainingMax(index, 90),
            ),

            BTMPressDataTableDayOne(
              index2: index2,
              lift: lift2,
              checkIndex0: 207,
              checkIndex1: 208,
              checkIndex2: 209,
              checkIndex3: 210,
              checkIndex4: 211,
              checkIndex5: 212,
              checkIndex6: 213,
              // checkIndex7: 214,
              // checkIndex8: 215,
              // checkIndex9: 216,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 70),
              eightyPercent: model.percentageOfTrainingMax(index2, 80),
              ninetyPercent: model.percentageOfTrainingMax(index2, 90),
              fslOne: model.percentageOfTrainingMax(index2, 70),
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
              percentage: 45,
              reps: '20',
              cbIndex1: 606,
              cbIndex2: 607,
              cbIndex3: 608,
              cbIndex4: 609,
              cbIndex5: 610,
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
