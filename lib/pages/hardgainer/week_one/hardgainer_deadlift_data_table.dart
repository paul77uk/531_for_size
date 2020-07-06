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
          cbIndex1: 855,
          cbIndex2: 856,
          cbIndex3: 857,
        ),
        FiveThreeOnePrSet(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 65,
          percentage2: 75,
          percentage3: 85,
          cbIndex1: 859,
          cbIndex2: 860,
          cbIndex3: 861,
        ),
        BBB(
          title: 'FSL',
          liftIndex: 2,
          percentage: 65,
          cbIndex1: 862,
          cbIndex2: 863,
          cbIndex3: 864,
          cbIndex4: 865,
          cbIndex5: 866,
        ),
      ],
    );
  }
}
