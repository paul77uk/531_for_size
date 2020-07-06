import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_press_data_table_day_one.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_squat_data_table_day_one.dart';

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
              checkIndex0: 424,
              checkIndex1: 425,
              checkIndex2: 426,
              checkIndex3: 427,
              checkIndex4: 428,
              checkIndex5: 429,
              checkIndex6: 430,
              checkIndex7: 431,
              checkIndex8: 432,
              checkIndex9: 433,
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
              checkIndex0: 434,
              checkIndex1: 435,
              checkIndex2: 436,
              checkIndex3: 437,
              checkIndex4: 438,
              checkIndex5: 439,
              checkIndex6: 440,
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
              percentage: 65,
              reps: '20',
              cbIndex1: 690,
              cbIndex2: 691,
              cbIndex3: 692,
              cbIndex4: 693,
              cbIndex5: 694,
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
