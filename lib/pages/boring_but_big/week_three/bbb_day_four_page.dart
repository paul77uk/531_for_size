import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
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

class BoringButBigDayFourPage extends StatefulWidget {
  @override
  _BoringButBigDayFourPageState createState() =>
      _BoringButBigDayFourPageState();
}

class _BoringButBigDayFourPageState extends State<BoringButBigDayFourPage> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[22].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[23].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 75,
                percentage2: 85,
                percentage3: 95,
                cbIndex1: 351,
                cbIndex2: 352,
                cbIndex3: 353,
                cbIndex4: 354,
                cbIndex5: 355,
                cbIndex6: 356,
                cbIndex7: 357,
                cbIndex8: 358,
                cbIndex9: 359,
                cbIndex10: 360,
                cbIndex11: 361,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 22,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 368,
                    cbIndex2: 369,
                    cbIndex3: 370,
                    cbIndex4: 371,
                    cbIndex5: 372,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: 0,
                        cbIndex1: 362,
                        cbIndex2: 363,
                        cbIndex3: 364,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 75,
                        percentage2: 85,
                        percentage3: 95,
                        cbIndex1: 365,
                        cbIndex2: 366,
                        cbIndex3: 367,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 368,
                        cbIndex2: 369,
                        cbIndex3: 370,
                        cbIndex4: 371,
                        cbIndex5: 372,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 373,
                  cbIndex2: 374,
                  cbIndex3: 375,
                  cbIndex4: 376,
                  cbIndex5: 377,
                  liftIndexEx: 23,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: 18,
                    reps: '10',
                    cbIndex1: 378,
                    cbIndex2: 379,
                    cbIndex3: 380,
                    cbIndex4: 381,
                    cbIndex5: 382,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 378,
                    cbIndex2: 379,
                    cbIndex3: 380,
                    cbIndex4: 381,
                    cbIndex5: 382,
                  ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Workout Completed.\nReset',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: ThemeData.dark().primaryColor),
                  ),
                ),
                onPressed: () {
                  model.setWeekIndex(0);
                  model.getWeekIndex();

                  model.setDayIndex(0);
                  model.getDayIndex();
                  int resetIndex;
                  setState(() {
                    for (resetIndex = 0; resetIndex < 383; resetIndex++) {
                      CheckBoxClass checkBoxClass =
                          CheckBoxClass(trueOrFalse: 'false');
                      checkBoxClass.id = model.checkboxes[resetIndex].id;
                      model.updateCheckbox(checkBoxClass);
                      print(resetIndex);
                    }
                  });

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
