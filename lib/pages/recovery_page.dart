import 'package:flutter/material.dart';

class RecoveryPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recovery'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ACTIVE RECOVERY No1',
                textAlign: TextAlign.center,
              ),
            ),
            subtitle: Text(
                '• Air Dyne x 3 minutes (easy pace).\n• Hurdle Duck-Unders x 5-10/side.\n• Leg Kicks (these can be done standing or on your back with a band) x 10/leg.\n• Ab Wheel x 10.• Spidermans - 10/leg.\n(Done in a circuit; 3-5 times through.)',
                style: TextStyle(height: 1.5)),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'ACTIVE RECOVERY No2',
                textAlign: TextAlign.center,
              ),
            ),
            subtitle: Text(
                '• Jump Rope x 100.\n• Turkish Get-up x 5/side.\n• Push-ups x 10.\n• Hurdle Duck-Unders x 5-10/side.\n(Done in a circuit; 3-5 times through.)',
                style: TextStyle(height: 1.5)),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'ACTIVE RECOVERY No3',
                textAlign: TextAlign.center,
              ),
            ),
            subtitle: Text(
                '• Jog x 30-50 yards.\n• Spidermans - 10/leg.\n• Jog Backward - 30-50 yards.\n• Turkish Get-up x 5/side.\n• Jog x 30-50 yards.\n• Push-ups x 10.\n(Done in a circuit; 3-5 times through.)',
                style: TextStyle(height: 1.5)),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'ACTIVE RECOVERY No4',
                textAlign: TextAlign.center,
              ),
            ),
            subtitle: Text(
                '• Drop into a squat position, hold for 5-10 seconds. Descend slowly and under control.\n• While in the squat position, put your hands on the ground and walk your hands in front of you, get into the push-up position.\n• Perform a spiderman with each leg, holding each position for 5-10 seconds.\n• Return to push-up position and do 1-3 push-ups, holding bottom position for 5-10 seconds.\n• Inch worm your hands back to your feet, keeping legs as straight as possible. Return to a standing position.\n(This is done for 10-20 reps, each time through is one repetition.)',
                style: TextStyle(height: 1.5)),
          ),
        ],
      ),
    );
  }
}
