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
          cbIndex1: 569,
          cbIndex2: 570,
          cbIndex3: 571,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 70,
          percentage2: 80,
          percentage3: 90,
          cbIndex1: 572,
          cbIndex2: 573,
          cbIndex3: 574,
        ),
        BBB(
          title: 'BBB',
          liftIndex: 2,
          percentage: 70,
          cbIndex1: 575,
          cbIndex2: 576,
          cbIndex3: 577,
          cbIndex4: 578,
          cbIndex5: 579,
        ),
      ],
    );
  }
}
