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

class BoringButBigDayOnePage extends StatefulWidget {
  final String title;
  final int liftIndex;

  const BoringButBigDayOnePage({Key key, this.title, this.liftIndex})
      : super(key: key);
  @override
  _BoringButBigDayOnePageState createState() => _BoringButBigDayOnePageState();
}

class _BoringButBigDayOnePageState extends State<BoringButBigDayOnePage> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[0].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[1].exerciseIndex;
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
                cbIndex1: 1,
                cbIndex2: 2,
                cbIndex3: 3,
                cbIndex4: 4,
                cbIndex5: 5,
                cbIndex6: 6,
                cbIndex7: 7,
                cbIndex8: 8,
                cbIndex9: 9,
                cbIndex10: 10,
                cbIndex11: 11,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 0,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 18,
                    cbIndex2: 19,
                    cbIndex3: 20,
                    cbIndex4: 21,
                    cbIndex5: 22,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 12,
                        cbIndex2: 13,
                        cbIndex3: 14,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 65,
                        percentage2: 75,
                        percentage3: 85,
                        cbIndex1: 15,
                        cbIndex2: 16,
                        cbIndex3: 17,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 18,
                        cbIndex2: 19,
                        cbIndex3: 20,
                        cbIndex4: 21,
                        cbIndex5: 22,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 23,
                  cbIndex2: 24,
                  cbIndex3: 25,
                  cbIndex4: 26,
                  cbIndex5: 27,
                  liftIndexEx: 1,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 28,
                    cbIndex2: 29,
                    cbIndex3: 30,
                    cbIndex4: 31,
                    cbIndex5: 32,
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
