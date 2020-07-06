import 'package:five_three_one_forever_app/widgets/launch_url.dart';
import 'package:flutter/material.dart';

class WarmUpPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Warm Up'),
      ),
      body: ListView(
        children: <Widget>[
          WarmupWidgetTile(
            title: 'Example 1:\nJoe Defranco\'s Agile 8',
            subtitle:
                '1. IT Band foam roll x 10-15 passes per leg.\n2. Adductor foam roll x 10-15 passes per leg.\n3. Glute/piriformis myofacsial release; best done with a lacrosse ball or PVC pipe x 30 seconds per side.\n4. Rollovers into "V" sits x 10 reps.\n5. Fire hydrant circles, 10 forward and backward circles with each leg.\n6. Mountain climbers x 10 reps.\n7. Groiners x 10 reps, holding last rep for 10 seconds.\n8. Hip flexor stretch x 3 sets of 10 seconds per leg, perform all reps with one leg before switching to the other.',
            widget: LaunchUrl(
              child: Icon(Icons.play_arrow),
              url: 'https://www.youtube.com/watch?v=3B-3Khbht5s',
            ),
          ),
          WarmupWidgetTile(
            title: 'Example 2:',
            subtitle:
                '1. Jump rope x 50.\n2. Hurdle Duck-Under x 5/side.\n3. Push-up x 3, hold bottom position for 3 seconds.\n4. Walking lunge x 5 reps/leg.\n5. Band pull-apart x 20.\n6. Squat x 30 seconds.',
          ),
          WarmupWidgetTile(
            title: 'Example 3:',
            subtitle:
                '1. Jumping Jack x 25.\n2. Bodyweight squat x 30 second hold at bottom.\n3. Push-up x 5 (hold bottom position for 3-5 seconds.\n4. Bulgarian one-leg squat x 5/leg (hold bottom position for 5 seconds).\n5. Hang from chin bar x 30 seconds.',
          ),
          WarmupWidgetTile(
            title: 'Beginner warm-up',
            subtitle:
                'Jumping jacks - 3 sets of 25 reps\nBodyweight squat - 3 sets of 10 reps\nMountain climbers - 3 sets of 10 reps/leg',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                '(These should be done as a circuit prior to every training session.)'),
          ),
        ],
      ),
    );
  }
}

class WarmupWidgetTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget widget;
  const WarmupWidgetTile({
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
