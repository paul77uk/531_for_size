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
          cbIndex1: 731,
          cbIndex2: 732,
          cbIndex3: 733,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 2,
          percentage1: 65,
          percentage2: 75,
          percentage3: 85,
          cbIndex1: 734,
          cbIndex2: 735,
          cbIndex3: 736,
        ),
        BBB(
          title: 'BBB',
          liftIndex: 2,
          percentage: 65,
          cbIndex1: 575,
          cbIndex2: 737,
          cbIndex3: 738,
          cbIndex4: 739,
          cbIndex5: 740,
        ),
      ],
    );
  }
}
