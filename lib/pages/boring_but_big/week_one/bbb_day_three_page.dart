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
      int ex1SavedIndex = model.exerciseindexClass[4].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[5].exerciseIndex;
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
                cbIndex1: 65,
                cbIndex2: 66,
                cbIndex3: 67,
                cbIndex4: 68,
                cbIndex5: 69,
                cbIndex6: 70,
                cbIndex7: 71,
                cbIndex8: 72,
                cbIndex9: 73,
                cbIndex10: 74,
                cbIndex11: 75,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 4,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 82,
                    cbIndex2: 83,
                    cbIndex3: 84,
                    cbIndex4: 85,
                    cbIndex5: 86,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 76,
                        cbIndex2: 77,
                        cbIndex3: 78,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 65,
                        percentage2: 75,
                        percentage3: 85,
                        cbIndex1: 79,
                        cbIndex2: 80,
                        cbIndex3: 81,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 82,
                        cbIndex2: 83,
                        cbIndex3: 84,
                        cbIndex4: 85,
                        cbIndex5: 86,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 87,
                  cbIndex2: 88,
                  cbIndex3: 89,
                  cbIndex4: 90,
                  cbIndex5: 91,
                  liftIndexEx: 5,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 92,
                    cbIndex2: 93,
                    cbIndex3: 94,
                    cbIndex4: 95,
                    cbIndex5: 96,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 92,
                    cbIndex2: 93,
                    cbIndex3: 94,
                    cbIndex4: 95,
                    cbIndex5: 96,
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
