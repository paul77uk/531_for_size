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

class BoringButBigDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[12].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[13].exerciseIndex;
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
                cbIndex1: 191,
                cbIndex2: 192,
                cbIndex3: 193,
                cbIndex4: 194,
                cbIndex5: 195,
                cbIndex6: 196,
                cbIndex7: 197,
                cbIndex8: 198,
                cbIndex9: 199,
                cbIndex10: 200,
                cbIndex11: 201,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 12,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 208,
                    cbIndex2: 209,
                    cbIndex3: 210,
                    cbIndex4: 211,
                    cbIndex5: 212,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 202,
                        cbIndex2: 203,
                        cbIndex3: 204,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 70,
                        percentage2: 80,
                        percentage3: 90,
                        cbIndex1: 205,
                        cbIndex2: 206,
                        cbIndex3: 207,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 208,
                        cbIndex2: 209,
                        cbIndex3: 210,
                        cbIndex4: 211,
                        cbIndex5: 212,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 213,
                  cbIndex2: 214,
                  cbIndex3: 215,
                  cbIndex4: 216,
                  cbIndex5: 217,
                  liftIndexEx: 13,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 218,
                    cbIndex2: 219,
                    cbIndex3: 220,
                    cbIndex4: 221,
                    cbIndex5: 222,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 218,
                    cbIndex2: 219,
                    cbIndex3: 220,
                    cbIndex4: 221,
                    cbIndex5: 222,
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

                  model.setDayIndex(3);
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
