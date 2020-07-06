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
          cbIndex1: 1040,
          cbIndex2: 1041,
          cbIndex3: 1042,
        ),
        FiveXFiveThreeOne(
          title: '5x5/3/1',
          liftIndex: 1,
          percentage1: 75,
          percentage2: 85,
          percentage3: 95,
          cbIndex1: 1043,
          cbIndex2: 1044,
          cbIndex3: 1045,
          cbIndex4: 1046,
          cbIndex5: 1047,
          cbIndex6: 1048,
          cbIndex7: 1049,
        ),
      ],
    );
  }
}
