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
          cbIndex1: 940,
          cbIndex2: 941,
          cbIndex3: 942,
        ),
        FiveXFiveThreeOne(
          title: '5x5/3/1',
          liftIndex: 1,
          percentage1: 70,
          percentage2: 80,
          percentage3: 90,
          cbIndex1: 943,
          cbIndex2: 944,
          cbIndex3: 945,
          cbIndex4: 946,
          cbIndex5: 947,
          cbIndex6: 948,
          cbIndex7: 949,
        ),
      ],
    );
  }
}
