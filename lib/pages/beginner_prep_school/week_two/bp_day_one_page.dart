import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_two/bp_lift_data_table.dart';

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
              checkIndex0: 66,
              checkIndex1: 67,
              checkIndex2: 68,
              checkIndex3: 69,
              checkIndex4: 70,
              checkIndex5: 71,
              checkIndex6: 72,
              checkIndex7: 73,
              checkIndex8: 74,
              checkIndex9: 75,
              checkIndex10: 76,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fslOne: model.percentageOfTrainingMax(index, 65),
              fslTwo: model.percentageOfTrainingMax(index, 65),
              fslThree: model.percentageOfTrainingMax(index, 65),
              fslFour: model.percentageOfTrainingMax(index, 65),
              fslFive: model.percentageOfTrainingMax(index, 65),
            ),
            twoLifts
                ? Column(
                    children: <Widget>[
                      BPLiftDataTable(
                        index: index2,
                        lift: lift2,
                        checkIndex0: 77,
                        checkIndex1: 78,
                        checkIndex2: 79,
                        checkIndex3: 80,
                        checkIndex4: 81,
                        checkIndex5: 82,
                        checkIndex6: 83,
                        checkIndex7: 84,
                        checkIndex8: 85,
                        checkIndex9: 86,
                        checkIndex10: 87,
                        fortyPercent: model.percentageOfTrainingMax(index2, 40),
                        fiftyPercent: model.percentageOfTrainingMax(index2, 50),
                        sixtyPercent: model.percentageOfTrainingMax(index2, 60),
                        seventyPercent:
                            model.percentageOfTrainingMax(index2, 65),
                        eightyPercent:
                            model.percentageOfTrainingMax(index2, 75),
                        ninetyPercent:
                            model.percentageOfTrainingMax(index2, 85),
                        fslOne: model.percentageOfTrainingMax(index2, 65),
                        fslTwo: model.percentageOfTrainingMax(index2, 65),
                        fslThree: model.percentageOfTrainingMax(index2, 65),
                        fslFour: model.percentageOfTrainingMax(index2, 65),
                        fslFive: model.percentageOfTrainingMax(index2, 65),
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
