import 'package:five_three_one_forever_app/widgets/launch_url.dart';
import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Text(
                        'Rest Pause, do AMRAP(as many reps as possible) with good form and good bar speed, rest 23 seconds, then do the same again, will be for less reps this time, rest again for 23 seconds, then a last amrap set,\n\nthen a static hold for that lift,\n\npull up: maybe a hang or bent arm hand, \n\nsquat: (not after a rest pause but after the widowmaker) a squat hold, \n\ndeadlift: (not after a rest pause but after the widowmaker), a hold like a farmers walk, but don\'t have to walk with it, \n\npress or bench: can hold slightly bent arms from the top, or a few inches from the bottom of the move,\n\ncurls: can hold somewhere in the middle of the move or a little closer to the top\n\nShould do a 7th week Deload after every 2-3 cycles, then maybe switch to another program for 1 or 2 cycles')),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LaunchUrl(
                url:
                    'https://muscleandbrawn.com/a-concise-guide-to-doggcrapp-training/',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Opacity(
                    //   opacity: 0,
                    //   child: Icon(Icons.link),
                    // ),
                    Text('A Concise Guide to Doggcrapp Training'),
                    Icon(Icons.link),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
