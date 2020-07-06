import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTSquatDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Squat',
          liftIndex: 0,
          cbIndex1: 757,
          cbIndex2: 758,
          cbIndex3: 759,
        ),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 760,
            cbIndex2: 761,
            cbIndex3: 762),
        BBB(
          title: 'BBB',
          liftIndex: 0,
          percentage: 65,
          cbIndex1: 763,
          cbIndex2: 764,
          cbIndex3: 765,
          cbIndex4: 766,
          cbIndex5: 767,
        ),
      ],
    );
  }
}
