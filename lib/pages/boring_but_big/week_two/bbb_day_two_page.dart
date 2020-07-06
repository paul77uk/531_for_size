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
      int ex1SavedIndex = model.exerciseindexClass[10].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[11].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 70,
                percentage2: 80,
                percentage3: 90,
                cbIndex1: 162,
                cbIndex2: 163,
                cbIndex3: 164,
                cbIndex4: 165,
                cbIndex5: 166,
                cbIndex6: 167,
                cbIndex7: 168,
                cbIndex8: 169,
                cbIndex9: 170,
                cbIndex10: 171,
                cbIndex11: 172,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 10,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 176,
                    cbIndex2: 177,
                    cbIndex3: 178,
                    cbIndex4: 179,
                    cbIndex5: 180,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 425,
                        cbIndex2: 426,
                        cbIndex3: 427,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 70,
                        percentage2: 80,
                        percentage3: 90,
                        cbIndex1: 173,
                        cbIndex2: 174,
                        cbIndex3: 175,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 176,
                        cbIndex2: 177,
                        cbIndex3: 178,
                        cbIndex4: 179,
                        cbIndex5: 180,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 181,
                  cbIndex2: 182,
                  cbIndex3: 183,
                  cbIndex4: 184,
                  cbIndex5: 185,
                  liftIndexEx: 11,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 186,
                    cbIndex2: 187,
                    cbIndex3: 188,
                    cbIndex4: 189,
                    cbIndex5: 190,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 186,
                    cbIndex2: 187,
                    cbIndex3: 188,
                    cbIndex4: 189,
                    cbIndex5: 190,
                  ),
            Center(
              child: RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Text(
                  'Day Completed',
                  style: TextStyle(color: ThemeData.dark().primaryColor),
                ),
                onPressed: () {
                  model.setWeekIndex(1);
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
