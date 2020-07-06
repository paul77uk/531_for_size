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
          cbIndex1: 965,
          cbIndex2: 966,
          cbIndex3: 967,
        ),
        FiveThreeOnePrSet(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 70,
          percentage2: 80,
          percentage3: 90,
          cbIndex1: 968,
          cbIndex2: 969,
          cbIndex3: 970,
        ),
        BBB(
          title: 'FSL',
          liftIndex: 2,
          percentage: 70,
          cbIndex1: 971,
          cbIndex2: 972,
          cbIndex3: 973,
          cbIndex4: 974,
          cbIndex5: 975,
        ),
      ],
    );
  }
}
