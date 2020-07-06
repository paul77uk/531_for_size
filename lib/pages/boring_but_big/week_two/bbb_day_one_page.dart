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

class BoringButBigDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[8].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[9].exerciseIndex;
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
                cbIndex1: 130,
                cbIndex2: 131,
                cbIndex3: 132,
                cbIndex4: 133,
                cbIndex5: 134,
                cbIndex6: 135,
                cbIndex7: 136,
                cbIndex8: 137,
                cbIndex9: 138,
                cbIndex10: 139,
                cbIndex11: 140,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 8,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 147,
                    cbIndex2: 148,
                    cbIndex3: 149,
                    cbIndex4: 150,
                    cbIndex5: 151,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 141,
                        cbIndex2: 142,
                        cbIndex3: 143,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 70,
                        percentage2: 80,
                        percentage3: 90,
                        cbIndex1: 144,
                        cbIndex2: 145,
                        cbIndex3: 146,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 147,
                        cbIndex2: 148,
                        cbIndex3: 149,
                        cbIndex4: 150,
                        cbIndex5: 151,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 152,
                  cbIndex2: 153,
                  cbIndex3: 154,
                  cbIndex4: 155,
                  cbIndex5: 156,
                  liftIndexEx: 9,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: ' 5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 157,
                    cbIndex2: 158,
                    cbIndex3: 159,
                    cbIndex4: 160,
                    cbIndex5: 161,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 157,
                    cbIndex2: 158,
                    cbIndex3: 159,
                    cbIndex4: 160,
                    cbIndex5: 161,
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

                  model.setDayIndex(1);
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
