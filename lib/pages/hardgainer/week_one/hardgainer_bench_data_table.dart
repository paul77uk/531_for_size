import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/five_x_five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class HardgainerBenchDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Bench',
          liftIndex: 1,
          cbIndex1: 830,
          cbIndex2: 831,
          cbIndex3: 832,
        ),
        FiveXFiveThreeOne(
          title: '5x5/3/1',
          liftIndex: 1,
          percentage1: 65,
          percentage2: 75,
          percentage3: 85,
          cbIndex1: 833,
          cbIndex2: 834,
          cbIndex3: 835,
          cbIndex4: 836,
          cbIndex5: 837,
          cbIndex6: 838,
          cbIndex7: 839,
        ),
      ],
    );
  }
}
