import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_two/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_two/btm_squat_data_table_day_three.dart';

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
              checkIndex0: 292,
              checkIndex1: 293,
              checkIndex2: 294,
              checkIndex3: 295,
              checkIndex4: 296,
              checkIndex5: 297,
              checkIndex6: 298,
              // checkIndex7: 299,
              // checkIndex8: 300,
              // checkIndex9: 301,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fortyFivePercent: model.percentageOfTrainingMax(index, 55),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 299,
              checkIndex1: 300,
              checkIndex2: 301,
              checkIndex3: 302,
              checkIndex4: 303,
              checkIndex5: 304,
              checkIndex6: 305,
              checkIndex7: 306,
              checkIndex8: 307,
              checkIndex9: 308,
              checkIndex10: 309,
              checkIndex11: 310,
              checkIndex12: 311,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 50),
              eightyPercent: model.percentageOfTrainingMax(index2, 50),
              ninetyPercent: model.percentageOfTrainingMax(index2, 50),
              fslOne: model.percentageOfTrainingMax(index2, 50),
              fslTwo: model.percentageOfTrainingMax(index2, 50),
              fslThree: model.percentageOfTrainingMax(index2, 50),
              fslFour: model.percentageOfTrainingMax(index2, 50),
              fslFive: model.percentageOfTrainingMax(index2, 50),
              fslSix: model.percentageOfTrainingMax(index2, 50),
              fslSeven: model.percentageOfTrainingMax(index2, 50),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 55,
              cbIndex1: 631,
              cbIndex2: 632,
              cbIndex3: 633,
              cbIndex4: 634,
              cbIndex5: 635,
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
              cbIndex1: 636,
              cbIndex2: 637,
              cbIndex3: 638,
              cbIndex4: 639,
              cbIndex5: 640,
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
