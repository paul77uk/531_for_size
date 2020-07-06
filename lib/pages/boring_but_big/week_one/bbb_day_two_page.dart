import 'package:five_three_one_forever_app/pages/boring_but_big/boring_but_big_week_page.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_pr_and_bbb.dart';
import 'package:five_three_one_forever_app/widgets/alternative_5x10.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';

import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BoringButBigDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[2].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[3].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 65,
                percentage2: 75,
                percentage3: 85,
                cbIndex1: 33,
                cbIndex2: 34,
                cbIndex3: 35,
                cbIndex4: 36,
                cbIndex5: 37,
                cbIndex6: 38,
                cbIndex7: 39,
                cbIndex8: 40,
                cbIndex9: 41,
                cbIndex10: 42,
                cbIndex11: 43,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 2,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 50,
                    cbIndex2: 51,
                    cbIndex3: 52,
                    cbIndex4: 53,
                    cbIndex5: 54,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 44,
                        cbIndex2: 45,
                        cbIndex3: 46,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 65,
                        percentage2: 75,
                        percentage3: 85,
                        cbIndex1: 47,
                        cbIndex2: 48,
                        cbIndex3: 49,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 50,
                        cbIndex2: 51,
                        cbIndex3: 52,
                        cbIndex4: 53,
                        cbIndex5: 54,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 55,
                  cbIndex2: 56,
                  cbIndex3: 57,
                  cbIndex4: 58,
                  cbIndex5: 59,
                  liftIndexEx: 3,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 60,
                    cbIndex2: 61,
                    cbIndex3: 62,
                    cbIndex4: 63,
                    cbIndex5: 64,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 28,
                    cbIndex2: 29,
                    cbIndex3: 30,
                    cbIndex4: 31,
                    cbIndex5: 32,
                  ),
            Center(
              child: RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Text(
                  'Day Completed',
                  style: TextStyle(color: ThemeData.dark().primaryColor),
                ),
                onPressed: () {
                  model.setWeekIndex(0);
                  model.getWeekIndex();

                  model.setDayIndex(2);
                  model.getDayIndex();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BoringButBig(weekIndex: model.getmWeekIndex)),
                  );
                },
              ),
            ),
            Divider(),
            Padding(padding: EdgeInsets.all(18)),
          ],
        ),
      );
    });
  }
}
