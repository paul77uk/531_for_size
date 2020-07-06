import 'package:five_three_one_forever_app/widgets/launch_url.dart';
import 'package:flutter/material.dart';

class AssistancePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Assistance Work'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Push:'),
              subtitle: Text(
                  'Push: dips, push-ups, DB bench/incline press, triceps extensions/pushdowns'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Pull:'),
              subtitle: Text(
                  'chin-ups/pull-ups, inverted rows, rows (DB/machine/BB), face pulls, band pull-aparts, lat pulldown, curls'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Single Leg/Core:'),
              subtitle: Text(
                  'any abdominal work, back raises, reverse hyperextensions, lunges, step-ups, Bulgarian one-leg squats, KB snatches, swings'),
            ),
          ),
          AssistanceWidgetTile(
              title: 'SAMPLE ASSISTANCE CIRCUIT No1',
              subtitle:
                  'DB Squat x 20 reps\nPush-ups x 10 reps\nChin-ups x 5 reps\nAb Wheel x 10 reps\n* Done 5 times through\n* Total Time Goal: 20 minutes'),
          AssistanceWidgetTile(
            title: 'SAMPLE ASSISTANCE CIRCUIT No2',
            subtitle:
                'KB Swing x 15 reps\nDips x 10 reps\nInverted Rows x 15 reps\nHangining Leg Raise (knees bent) x 10 reps\n* Done 5 times through\n* Total Time Goal: 20 minutes',
          ),
        ],
      ),
    );
  }
}

class AssistanceWidgetTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget widget;
  const AssistanceWidgetTile({
    Key key,
    this.title,
    this.subtitle,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Opacity(
              child: Icon(Icons.play_arrow),
              opacity: 0,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            widget != null
                ? widget
                : Opacity(
                    child: Icon(Icons.play_arrow),
                    opacity: 0,
                  ),
          ],
        ),
      ),
      subtitle: Text(subtitle, style: TextStyle(height: 1.5)),
    );
  }
}
