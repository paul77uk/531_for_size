import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class HardgainerDeadliftDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Deadlift',
          liftIndex: 2,
          cbIndex1: 1060,
          cbIndex2: 1061,
          cbIndex3: 1062,
        ),
        FiveThreeOnePrSet(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 75,
          percentage2: 85,
          percentage3: 95,
          cbIndex1: 1063,
          cbIndex2: 1064,
          cbIndex3: 1065,
        ),
        BBB(
          title: 'FSL',
          liftIndex: 2,
          percentage: 75,
          cbIndex1: 1066,
          cbIndex2: 1067,
          cbIndex3: 1068,
          cbIndex4: 1069,
          cbIndex5: 1070,
        ),
      ],
    );
  }
}
