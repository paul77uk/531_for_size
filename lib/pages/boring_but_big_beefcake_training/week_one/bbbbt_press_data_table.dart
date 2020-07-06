import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTPressDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 553,
            cbIndex2: 554,
            cbIndex3: 555),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 556,
            cbIndex2: 557,
            cbIndex3: 558),
        BBB(
          title: 'BBB',
          liftIndex: 3,
          percentage: 70,
          cbIndex1: 559,
          cbIndex2: 560,
          cbIndex3: 561,
          cbIndex4: 562,
          cbIndex5: 563,
        ),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 70,
          cbIndex1: 564,
          cbIndex2: 565,
          cbIndex3: 566,
          cbIndex4: 567,
          cbIndex5: 568,
        ),
      ],
    );
  }
}
