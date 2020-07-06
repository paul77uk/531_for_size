import 'package:five_three_one_forever_app/pages/boring_but_big/boring_but_big_week_page.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';

import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_name_and_title_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/set_model.dart';
import 'package:five_three_one_forever_app/program_title/set_dialog.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetListScreen extends StatefulWidget {
  //

  final ExerciseNameAndTitleModel exerciseModel;
  SetListScreen(this.exerciseModel);

  @override
  _SetListScreenState createState() => _SetListScreenState(this.exerciseModel);
}

class _SetListScreenState extends State<SetListScreen> {
  //
  final ExerciseNameAndTitleModel exerciseModel;
  _SetListScreenState(this.exerciseModel);

  DbHelper helper;

  SetModel model;
  // List<SetModel> setModel;
  SharedPreferences prefs;
  double roundToNum;

  List<ExerciseModel> exerciseDb;
  ExerciseModel exerciseModelDb;

  int exerciseTitleIndex;

  int getIndex;
  String text;

  List<SetModel> setModel;

  @override
  Widget build(BuildContext context) {
    String PR;
    helper = DbHelper();
    helper.openDb();
    // int findIndex = 0;
    showData(this.exerciseModel.id);
    showData2();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${exerciseModel.title}'),
      ),
      body: ListView(
        children: <Widget>[
          Table(
            border: TableBorder.all(color: Colors.white70),
            columnWidths: {
              0: FractionColumnWidth(0.1),
              1: FractionColumnWidth(0.13),
              2: FractionColumnWidth(0.2),
              3: FractionColumnWidth(0.15),
              4: FractionColumnWidth(0.17),
              5: FractionColumnWidth(0.15),
              6: FractionColumnWidth(0.1),
            },
            children: [
              TableRow(children: [
                Opacity(
                  opacity: 0,
                  child: Column(children: [
                    SizedBox(
                      height: 48,
                      child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 18,
                            color: ThemeData.dark().accentColor,
                          ),
                          onPressed: () {}),
                    ),
                  ]),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Set',
                      style: TextStyle(color: ThemeData.dark().accentColor),
                    ),
                  )
                ]),
                Column(children: [
                  SizedBox(
                    height: 48,
                    child: Icon(
                      Icons.fitness_center,
                      size: 18,
                      color: ThemeData.dark().accentColor,
                    ),
                  ),
                ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      '%',
                      style: TextStyle(color: ThemeData.dark().accentColor),
                    ),
                  )
                ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Weight',
                      style: TextStyle(color: ThemeData.dark().accentColor),
                    ),
                  )
                ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Reps',
                      style: TextStyle(color: ThemeData.dark().accentColor),
                    ),
                  )
                ]),
                Opacity(
                  opacity: 0,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.check_box,
                        size: 18,
                        color: ThemeData.dark().accentColor,
                      ),
                    ),
                  ]),
                ),
              ]),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: (setModel != null) ? setModel.length : 0,
            itemBuilder: (BuildContext context, int index) {
              getIndex = index;
              return Dismissible(
                key: Key(setModel[index].percentage),
                background: Container(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: AlignmentDirectional.centerStart,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: AlignmentDirectional.centerEnd,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                onDismissed: (direction) {
                  setModel.removeAt(index);
                  promptUser(direction, index);
                },
                child: Column(
                  children: <Widget>[
                    Table(
                      border: TableBorder.all(color: Colors.white70),
                      columnWidths: {
                        0: FractionColumnWidth(0.1),
                        1: FractionColumnWidth(0.13),
                        2: FractionColumnWidth(0.2),
                        3: FractionColumnWidth(0.15),
                        4: FractionColumnWidth(0.17),
                        5: FractionColumnWidth(0.15),
                        6: FractionColumnWidth(0.1),
                      },
                      children: [
                        TableRow(children: [
                          Column(children: [
                            SizedBox(
                              height: 48,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    size: 18,
                                    color: ThemeData.dark().accentColor,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SetDialog(
                                                setModel: setModel[index],
                                                isNew: false,
                                                setModelList: setModel,
                                                index: index,
                                              )
                                          // ExerciseNameAndTitleScreen(
                                          //     programTitleModel[index])
                                          ),
                                    );
                                  }),
                            ),
                          ]),
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text('${setModel[index].setNumber}'),
                            )
                          ]),
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                  '${exerciseDb[setModel[index].exerciseId].lift}'),
                            )
                          ]),
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text('${setModel[index].percentage}'),
                            )
                          ]),
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                  '${percentageOfTrainingMax(setModel[index].exerciseId, setModel[index].percentage)}'),
                            )
                          ]),
                          // TODO:
                          setModel[index].prSet == 'false'
                              ? Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text('${setModel[index].reps}'),
                                  )
                                ])
                              : Column(children: [
                                  TextField(
                                    onSubmitted: (value) {
                                      PR = value;
                                      newPr(
                                          PR,
                                          index,
                                          int.parse(
                                              setModel[index].percentage));

                                      Scaffold.of(context)
                                          .showSnackBar(SnackBar(
                                        backgroundColor:
                                            ThemeData.dark().accentColor,
                                        duration: Duration(seconds: 5),
                                        content: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 45.0),
                                          child: Text("$text",
                                              textAlign: TextAlign.center),
                                        ),
                                      ));
                                      print(index);
                                    },
                                    style: TextStyle(fontSize: 14),

                                    decoration: InputDecoration(
                                        hintText:
                                            '${repsToBeat(setModel[index].exerciseId, int.parse(setModel[index].percentage))}+',
                                        hintStyle: TextStyle(
                                            color:
                                                ThemeData.dark().accentColor),
                                        border: InputBorder.none),

                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    // onChanged: (value) => PR = value,
                                    // validator: _validateLift,
                                    // initialValue: widget.editedContact?.lift,
                                  )
                                ]),
                          Column(children: [
                            SizedBox(
                              height: 48,
                              child: Transform.scale(
                                scale: 0.76,
                                child: Checkbox(
                                    checkColor:
                                        ThemeData.dark().primaryColorDark,
                                    value: setModel[index].completed == 'false'
                                        ? false
                                        : true,
                                    onChanged: (bool value) {
                                      setState(() {
                                        setModel[index].completed =
                                            value.toString();
                                        model = setModel[index];

                                        helper.insertSet(model);
                                      });
                                    }),
                              ),
                            ),
                          ]),
                        ]),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print(exerciseDb[0].id);
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => SetDialog(
      //               setModel: SetModel(0, exerciseModel.id, '', '', '', 0, ''),
      //               isNew: true)
      //           // ExerciseNameAndTitleScreen(
      //           //     programTitleModel[index])
      //           ),
      //     );

      //   },
      //   child: Icon(Icons.add),
      // ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LandingPage(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.timer,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TimerHomePage(),
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: () {
                setState(() {
                  // if db chebox index = true and index == this index of page, then checkbox index == false
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoringButBig(),
                  ),
                );
              }),
          IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SetDialog(
                            setModel: SetModel(0, exerciseModel.id, '', '', '',
                                getIndex + 1, '', 'false'),
                            isNew: true,
                            setModelList: setModel,
                            index: getIndex,
                          )
                      // ExerciseNameAndTitleScreen(
                      //     programTitleModel[index])
                      ),
                );
              }),
        ],
      ),
    );
  }

  newPr(String pr, int index, int percentage) {
    double parsedRepMax = double.parse(exerciseDb[index].repMax);
    double parsedTrainingMax =
        (double.parse(exerciseDb[index].trainingMax) / 100 * percentage);

    double parsedPr = double.parse(pr);
    double calculatedPr =
        parsedTrainingMax * parsedPr * 0.0333 + parsedTrainingMax;
    if (calculatedPr > parsedRepMax) {
      text = 'Well done your new PR is ${calculatedPr.toStringAsFixed(0)}';
      var updatedExercise = ExerciseModel(
          exerciseDb[index].id,
          exerciseDb[index].lift,
          calculatedPr.toStringAsFixed(0),
          exerciseDb[index].trainingMax);
      updatedExercise.id = exerciseDb[index + 1].id;
      helper.insertExercise(updatedExercise);
      setState(() {});
    } else if (pr == '1') {
      calculatedPr = parsedTrainingMax;
      text =
          '${calculatedPr.toStringAsFixed(0)}  You only managed $pr you need to lower your Training Max';
      setState(() {});
    } else if (pr == '2') {
      text =
          '${calculatedPr.toStringAsFixed(0)}  You only managed $pr you need to lower your Training Max';
      setState(() {});
    } else if (pr == '0') {
      calculatedPr = 0;
      text =
          'You couldn\'t hit you Training Max for 1, you need to lower your Training Max';
      setState(() {});
    } else if (calculatedPr < parsedRepMax) {
      text =
          '${calculatedPr.toStringAsFixed(0)}  No PR this time, keep working, it\'s about marginal gains';
      setState(() {});
    }
  }

  int repsToBeat(int index, int percentage) {
    int i;
    int parsedRepMax = int.parse(exerciseDb[index].repMax);
    if (exerciseDb[index].trainingMax == 'BW') {
      i = int.parse(exerciseDb[index].repMax);

      return i;
    } else if (exerciseDb[index].trainingMax != 'BW') {
      double parsedTrainingMax =
          (int.parse(exerciseDb[index].trainingMax) / 100 * percentage);
      for (i = 1;
          parsedTrainingMax * i * 0.0333 + parsedTrainingMax < parsedRepMax + 1;
          i++) {}
    }
    return i;
  }

  Future<bool> promptUser(DismissDirection direction, int index) async {
    return await showCupertinoDialog<bool>(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        content: Text("Are you sure you want to delete"),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              "Ok",
              style: TextStyle(color: ThemeData.dark().accentColor),
            ),
            onPressed: () {
              String strName = 'set ${setModel[index].id}';

              setState(() {
                helper.deleteSet(setModel[index]);
              });
              Navigator.pop(context);
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$strName deleted")));
            },
          ),
          CupertinoDialogAction(
            child: Text(
              'Cancel',
              style: TextStyle(color: ThemeData.dark().accentColor),
            ),
            onPressed: () {
              // Dismiss the dialog but don't
              // dismiss the swiped item
              Navigator.pop(context);
            },
          )
        ],
      ),
    ); // In case the user dismisses the dialog by clicking away from it
  }

  Future showData(int idProgramTitle) async {
    await helper.openDb();
    setModel = await helper.getSets(idProgramTitle);
    setState(() {
      setModel = setModel;
    });
  }

  Future showData2() async {
    await helper.openDb();
    exerciseDb = await helper.getExercises();
    setState(() {
      exerciseDb = exerciseDb;
    });
  }

  roundToSettings(double number) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('roundToSettings', number);

    // var result = prefs.getDouble('roundToSettings');
    // notifyListeners();
    // print(result);

    // if (prefs.getDouble('roundToSettings') == 2.5) {
    //   roundToNum = 2.5;
    //   notifyListeners();
    // } else if (prefs.getDouble('roundToSettings') == 5) {
    //   roundToNum = 5;
    //   notifyListeners();
    // } else if (prefs.getDouble('roundToSettings') == 10) {
    //   roundToNum = 10;
  }

  getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    roundToNum = prefs.getDouble('roundToSettings');
  }

  String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  String roundTrainingMax(double value) {
    // double roundTo25 = value % 2.5;
    getPrefs();

    double roundTo = value % roundToNum;

    String result = '';

    if (roundTo == 0) {
//       result = value.toStringAsFixed(0);
//     } else
      // if (roundTo25 == 0) {
      result = removeDecimalZeroFormat(value);
//       result = value.toStringAsFixed(1);

    }

    if (roundTo != 0) {
      if (roundToNum / 2 > roundTo) {
        //2.5 < 4
        value = value - roundTo;
        result = removeDecimalZeroFormat(value);
      } else if (roundToNum / 2 <= roundTo) // 2.5 < 4
      {
        value = value - roundTo + roundToNum; // 9 -4 + 5

//       }
//     }

//     if (roundTo25 != 0) {
//       if (2.5 / 2 > roundTo25) {
//         //1.25 < 1.5
//         value = value - roundTo25; //
//         result = removeDecimalZeroFormat(value);
// //           result = value.toStringAsFixed(1);
//       } else if (2.5 / 2 <= roundTo25) {
//         value = value - roundTo25 + 2.5; // 7 - 2.5 = 5 + 2.5 = 7.5

        result = removeDecimalZeroFormat(value);
//          result = value.toStringAsFixed(1);
      }
    }

    return result;
  }

  String percentageOfTrainingMax(int index, String percentage) {
    double parsedTrainingMax = exerciseDb[index].trainingMax == 'BW'
        ? 0
        : double.parse(exerciseDb[index].trainingMax);
    double result = (parsedTrainingMax / 100) * double.parse(percentage);

    return result.toStringAsFixed(0);
    // result.toStringAsFixed(0);
  }
}
