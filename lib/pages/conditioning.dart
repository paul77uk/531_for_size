import 'package:five_three_one_forever_app/pages/deload_page/day_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ConditioningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conditioning'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Hard Conditioning',
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 0,
            ),
            ListTile(
              title: Text(
                'Running',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Card(
                child: DataTable(
                  columnSpacing: 15,
                  horizontalMargin: 10,
                  columns: [
                    DataColumn(label: Text('DISTANCE')),
                    DataColumn(label: Text('NUMBER OF RUNS')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('100m'),
                      )),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('10-16'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('200m'),
                      )),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('6-8'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('400m'),
                      )),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('4-6'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('800m'),
                      )),
                      DataCell(Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('2-3'),
                      )),
                    ]),
                  ],
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Easy Conditioning',
                textAlign: TextAlign.center,
              ),
            ),
            Divider(),
            ListTile(
                subtitle: Text(
                    'Prowler: 10, 40 yard sprints/walks with 50% of bodyweight. 60-90 seconds rest in between the sprints/walks\n\n84 pound weight vest, 2 mile walk\n\nAir Dyne Bike, 10 miles (this day is CRUCIAL to get rid of soreness')),
            Divider(),
          ],
        ),
      ),
    );
  }
}
