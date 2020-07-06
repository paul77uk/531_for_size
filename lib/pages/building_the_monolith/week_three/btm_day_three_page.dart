import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_squat_data_table_day_three.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/contacts_list/rep_max_list_page.dart';

import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingTheMonolithDayThreePage extends StatelessWidget {
  const BuildingTheMonolithDayThreePage({
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

            BTMSquatDataTableDayThree(
              index: index,
              lift: lift,
              checkIndex0: 347,
              checkIndex1: 348,
              checkIndex2: 349,
              checkIndex3: 350,
              checkIndex4: 351,
              checkIndex5: 352,
              checkIndex6: 353,
              // checkIndex7: 299,
              // checkIndex8: 300,
              // checkIndex9: 301,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 75),
              eightyPercent: model.percentageOfTrainingMax(index, 85),
              ninetyPercent: model.percentageOfTrainingMax(index, 95),
              fortyFivePercent: model.percentageOfTrainingMax(index, 55),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 354,
              checkIndex1: 355,
              checkIndex2: 356,
              checkIndex3: 357,
              checkIndex4: 358,
              checkIndex5: 359,
              checkIndex6: 360,
              checkIndex7: 361,
              checkIndex8: 362,
              checkIndex9: 363,
              checkIndex10: 364,
              checkIndex11: 365,
              checkIndex12: 366,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 75),
              eightyPercent: model.percentageOfTrainingMax(index2, 75),
              ninetyPercent: model.percentageOfTrainingMax(index2, 75),
              fslOne: model.percentageOfTrainingMax(index2, 75),
              fslTwo: model.percentageOfTrainingMax(index2, 75),
              fslThree: model.percentageOfTrainingMax(index2, 75),
              fslFour: model.percentageOfTrainingMax(index2, 75),
              fslFive: model.percentageOfTrainingMax(index2, 75),
              fslSix: model.percentageOfTrainingMax(index2, 75),
              fslSeven: model.percentageOfTrainingMax(index2, 75),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 55,
              cbIndex1: 656,
              cbIndex2: 657,
              cbIndex3: 658,
              cbIndex4: 659,
              cbIndex5: 660,
            ),
            ListTile(title: Center(child: Text('Assistance'))),
            AssistanceTotalReps1(
              exercise: 'Chins',
              reps: '100',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 55,
              reps: '20',
              cbIndex1: 661,
              cbIndex2: 662,
              cbIndex3: 663,
              cbIndex4: 664,
              cbIndex5: 665,
            ),
            RouteTile(
              title: 'Conditioning - 3-4 days of easy conditioning.',
              route: ConditioningPage(),
            ),
            RouteTile(title: 'Adjust Training Maxes', route: RepMaxPage()),
            Padding(padding: EdgeInsets.all(20)),
          ],
        );
      }),
    );
  }
}
