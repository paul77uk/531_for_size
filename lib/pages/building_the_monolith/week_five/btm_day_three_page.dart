import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_squat_data_table_day_three.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

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
              checkIndex0: 459,
              checkIndex1: 460,
              checkIndex2: 461,
              checkIndex3: 462,
              checkIndex4: 463,
              checkIndex5: 464,
              checkIndex6: 465,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fortyFivePercent: model.percentageOfTrainingMax(index, 65),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 466,
              checkIndex1: 467,
              checkIndex2: 468,
              checkIndex3: 469,
              checkIndex4: 470,
              checkIndex5: 471,
              checkIndex6: 472,
              checkIndex7: 473,
              checkIndex8: 474,
              checkIndex9: 475,
              checkIndex10: 476,
              checkIndex11: 477,
              checkIndex12: 478,
              checkIndex13: 479,
              checkIndex14: 480,
              checkIndex15: 481,
              checkIndex16: 482,
              checkIndex17: 483,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 65),
              eightyPercent: model.percentageOfTrainingMax(index2, 65),
              ninetyPercent: model.percentageOfTrainingMax(index2, 65),
              fslOne: model.percentageOfTrainingMax(index2, 65),
              fslTwo: model.percentageOfTrainingMax(index2, 65),
              fslThree: model.percentageOfTrainingMax(index2, 65),
              fslFour: model.percentageOfTrainingMax(index2, 65),
              fslFive: model.percentageOfTrainingMax(index2, 65),
              fslSix: model.percentageOfTrainingMax(index2, 65),
              fslSeven: model.percentageOfTrainingMax(index2, 65),
              fslEight: model.percentageOfTrainingMax(index2, 65),
              fslNine: model.percentageOfTrainingMax(index2, 65),
              fslTen: model.percentageOfTrainingMax(index2, 65),
              fslEleven: model.percentageOfTrainingMax(index2, 65),
              fslTwelve: model.percentageOfTrainingMax(index2, 65),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 65,
              cbIndex1: 705,
              cbIndex2: 706,
              cbIndex3: 707,
              cbIndex4: 708,
              cbIndex5: 709,
            ),
            ListTile(title: Center(child: Text('Assistance'))),
            AssistanceTotalReps1(
              exercise: 'Chins',
              reps: '100',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 65,
              reps: '20',
              cbIndex1: 710,
              cbIndex2: 711,
              cbIndex3: 712,
              cbIndex4: 713,
              cbIndex5: 714,
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
