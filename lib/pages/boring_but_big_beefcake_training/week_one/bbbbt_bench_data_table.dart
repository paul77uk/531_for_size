import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTBenchDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Bench',
          liftIndex: 1,
          cbIndex1: 580,
          cbIndex2: 581,
          cbIndex3: 582,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 1,
          percentage1: 70,
          percentage2: 80,
          percentage3: 90,
          cbIndex1: 583,
          cbIndex2: 584,
          cbIndex3: 585,
        ),
        BBB(
            title: 'BBB',
            liftIndex: 1,
            percentage: 70,
            cbIndex1: 586,
            cbIndex2: 587,
            cbIndex3: 588,
            cbIndex4: 589,
            cbIndex5: 590),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 70,
          cbIndex1: 591,
          cbIndex2: 592,
          cbIndex3: 593,
          cbIndex4: 594,
          cbIndex5: 595,
        ),
      ],
    );
  }
}
