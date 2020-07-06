import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_three/bp_lift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepDayOnePage extends StatelessWidget {
  const BeginnerPrepDayOnePage({
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
              checkIndex0: 131,
              checkIndex1: 132,
              checkIndex2: 133,
              checkIndex3: 134,
              checkIndex4: 135,
              checkIndex5: 136,
              checkIndex6: 137,
              checkIndex7: 138,
              checkIndex8: 139,
              checkIndex9: 140,
              checkIndex10: 141,
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
                        checkIndex0: 142,
                        checkIndex1: 143,
                        checkIndex2: 144,
                        checkIndex3: 145,
                        checkIndex4: 146,
                        checkIndex5: 147,
                        checkIndex6: 148,
                        checkIndex7: 149,
                        checkIndex8: 150,
                        checkIndex9: 151,
                        checkIndex10: 152,
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
