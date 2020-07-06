import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_three/bp_lift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepDayThreePage extends StatelessWidget {
  const BeginnerPrepDayThreePage({
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
              checkIndex0: 175,
              checkIndex1: 176,
              checkIndex2: 177,
              checkIndex3: 178,
              checkIndex4: 179,
              checkIndex5: 180,
              checkIndex6: 181,
              checkIndex7: 182,
              checkIndex8: 183,
              checkIndex9: 184,
              checkIndex10: 185,
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
                        checkIndex0: 186,
                        checkIndex1: 187,
                        checkIndex2: 188,
                        checkIndex3: 189,
                        checkIndex4: 190,
                        checkIndex5: 191,
                        checkIndex6: 192,
                        checkIndex7: 193,
                        checkIndex8: 194,
                        checkIndex9: 195,
                        checkIndex10: 196,
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
