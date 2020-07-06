import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerPage> {
  int min = 1;
  int sec = 0;
  bool started = true;
  bool stopped = true;
  int timeForTimer = 0;
  String timeToDisplay = '';
  bool checkTimer = true;
  String display = '';

  _saveMin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int savedMin = (prefs.getInt('savedMin') ?? 1);
    print('$savedMin');
    await prefs.setInt('savedMin', savedMin);
    return savedMin;
  }

  _saveSec() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    sec = (prefs.getInt('sec') ?? 1);
    print('$sec');
    await prefs.setInt('sec', sec);
  }

  void start() {
    setState(() {
      Wakelock.enable();
      started = false;
      stopped = false;
    });
    timeForTimer = (min * 60) + sec;
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timeForTimer < 1 || checkTimer == false) {
          t.cancel();
          if (timeForTimer == 0) {
            final player = AudioCache();
            player.play('beep.wav');
            stopped = true;
          }
          checkTimer = true;
          timeToDisplay = '';
          started = true;
          stopped = true;
        } else if (timeForTimer < 60 && timeForTimer < 10) {
          timeToDisplay = '0:0$timeForTimer';
          timeForTimer = timeForTimer - 1;
        } else if (timeForTimer < 60) {
          timeToDisplay = '0:$timeForTimer';
          timeForTimer = timeForTimer - 1;
        } else if (timeForTimer < 3600) {
          int m = timeForTimer ~/ 60;
          int s = timeForTimer - (60 * m);
          timeToDisplay = s < 10
              ? m.toString() + ':' + '0$s'
              : m.toString() + ':' + s.toString();

          timeForTimer = timeForTimer - 1;
        }
      });
    });
    print(timeForTimer);
  }

  void stop() {
    started = true;
    stopped = true;
    checkTimer = false;
  }

  String toDisplay() {
    if (sec < 10) {
      display = '$min:0$sec';
    } else {
      display = '$min:$sec';
    }
    // if (min < 10 && sec < 10) {
    //   display = '0$min:0$sec';
    // } else if (min < 10 && sec > 9) {
    //   display = '0$min:$sec';
    // } else if (min > 9 && sec < 10) {
    //   display = '$min:0$sec';
    // } else {
    //   display = '$min:$sec';
    // }
    return display;
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Timer')),
      body: Container(
        child: Column(
          children: <Widget>[
            // Center(
            //     child: Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text(min < 10 ? '0$min' : '$min'),
            //     SizedBox(child: Text(':')),
            //     Text(sec < 10 ? '0$sec' : '$sec'),
            //   ],
            // )),
            // SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: GestureDetector(
                child: Text(timeToDisplay == '' ? toDisplay() : timeToDisplay,
                    style: TextStyle(
                        color: ThemeData.dark().accentColor, fontSize: 60)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NumberPicker.integer(
                    initialValue: min,
                    minValue: 0,
                    maxValue: 59,
                    listViewWidth: 60,
                    onChanged: (val) {
                      setState(() {
                        min = val;
                        _saveMin();
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: NumberPicker.integer(
                      zeroPad: true,
                      initialValue: sec,
                      minValue: 0,
                      maxValue: 59,
                      listViewWidth: 60,
                      onChanged: (val) {
                        setState(() {
                          sec = val;
                          _saveSec();
                        });
                      }),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: ThemeData.dark().accentColor,
                    onPressed: started ? start : null,
                    child: Text(
                      'Start',
                      style:
                          TextStyle(color: ThemeData.dark().primaryColorDark),
                    ),
                  ),
                ),
                Expanded(
                    child: RaisedButton(
                        color: ThemeData.dark().accentColor,
                        onPressed: stopped ? null : stop,
                        child: Text(
                          'Stop',
                          style: TextStyle(
                              color: ThemeData.dark().primaryColorDark),
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
