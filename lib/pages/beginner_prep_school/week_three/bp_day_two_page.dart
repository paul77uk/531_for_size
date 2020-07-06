import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_three/bp_lift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepDayTwoPage extends StatelessWidget {
  const BeginnerPrepDayTwoPage({
    Key key,
    this.lift,
    this.index,
    this.lift2,
    this.liftTable,
    this.index2,
    this.twoLifts = false,
  }) : super(key: key);

  final String lift;
  final int index;
  final String lift2;
  final int index2;
  final BPLiftDataTable liftTable;
  final bool twoLifts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(title: 'Jump/Throws - 10-20 total'),
            // DataTableClass(),

            BPLiftDataTable(
              index: index,
              lift: lift,
              checkIndex0: 153,
              checkIndex1: 154,
              checkIndex2: 155,
              checkIndex3: 156,
              checkIndex4: 157,
              checkIndex5: 158,
              checkIndex6: 159,
              checkIndex7: 160,
              checkIndex8: 161,
              checkIndex9: 162,
              checkIndex10: 163,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 75),
              eightyPercent: model.percentageOfTrainingMax(index, 85),
              ninetyPercent: model.percentageOfTrainingMax(index, 95),
              fslOne: model.percentageOfTrainingMax(index, 75),
              fslTwo: model.percentageOfTrainingMax(index, 75),
              fslThree: model.percentageOfTrainingMax(index, 75),
              fslFour: model.percentageOfTrainingMax(index, 75),
              fslFive: model.percentageOfTrainingMax(index, 75),
            ),
            twoLifts
                ? Column(
                    children: <Widget>[
                      BPLiftDataTable(
                        index: index2,
                        lift: lift2,
                        checkIndex0: 164,
                        checkIndex1: 165,
                        checkIndex2: 166,
                        checkIndex3: 167,
                        checkIndex4: 168,
                        checkIndex5: 169,
                        checkIndex6: 170,
                        checkIndex7: 171,
                        checkIndex8: 172,
                        checkIndex9: 173,
                        checkIndex10: 174,
                        fortyPercent: model.percentageOfTrainingMax(index2, 40),
                        fiftyPercent: model.percentageOfTrainingMax(index2, 50),
                        sixtyPercent: model.percentageOfTrainingMax(index2, 60),
                        seventyPercent:
                            model.percentageOfTrainingMax(index2, 75),
                        eightyPercent:
                            model.percentageOfTrainingMax(index2, 85),
                        ninetyPercent:
                            model.percentageOfTrainingMax(index2, 95),
                        fslOne: model.percentageOfTrainingMax(index2, 75),
                        fslTwo: model.percentageOfTrainingMax(index2, 75),
                        fslThree: model.percentageOfTrainingMax(index2, 75),
                        fslFour: model.percentageOfTrainingMax(index2, 75),
                        fslFive: model.percentageOfTrainingMax(index2, 75),
                      ),
                      RouteTile(title: 'Assistance', route: AssistancePage()),
                    ],
                  )
                : RouteTile(
                    title: 'Assistance',
                    // \n\n• Push - 50-100 total reps.\n• Pull - 50-100 total reps.\n• Single Leg/Core - 50-100 total reps.',
                    route: AssistancePage()),

            RouteTile(
              title: 'Conditioning - 3-4 hard days of conditioning.',
              route: ConditioningPage(),
            ),
          ],
        );
      }),
    );
  }
}
