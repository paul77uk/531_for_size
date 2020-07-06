import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTDeadliftDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Deadlift',
          liftIndex: 2,
          cbIndex1: 787,
          cbIndex2: 788,
          cbIndex3: 789,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 75,
          percentage2: 85,
          percentage3: 95,
          cbIndex1: 790,
          cbIndex2: 791,
          cbIndex3: 792,
        ),
        BBB(
          title: 'BBB',
          liftIndex: 2,
          percentage: 75,
          cbIndex1: 575,
          cbIndex2: 793,
          cbIndex3: 794,
          cbIndex4: 795,
          cbIndex5: 796,
        ),
      ],
    );
  }
}
