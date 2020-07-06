import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/deload_page/deload_page.dart';
import 'package:five_three_one_forever_app/pages/recovery_page.dart';
import 'package:five_three_one_forever_app/pages/training_programs.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/pages/settings_page.dart';
import 'package:five_three_one_forever_app/program_title/rep_max_list_page.dart';
import 'package:five_three_one_forever_app/program_title/program_bloc_reciever_list.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/ui/contacts_list/rep_max_list_page.dart';
import 'package:five_three_one_forever_app/widgets/launch_url_list_title.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '5/3/1 For Size',
          style: TextStyle(color: Colors.grey[300]),
        ),
      ),
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Program Screen', route: ProgramBlocReceiever()),

          RouteTile(
            title: 'Settings',
            route: SettingsPage(),
          ),

          RouteTile(
            title: 'Rep Max Page',
            route: RepMaxListPage(),
          ),
          RouteTile(
            title: 'Timer',
            route: TimerHomePage(),
          ),
          RouteTile(
            title: 'Exercises & Maxes',
            route: RepMaxPage(),
          ),
          RouteTile(
            title: 'Warm Up/ Mobility',
            route: WarmUpPage(),
          ),
          RouteTile(
            title: 'Deload/ 7th Week Protocol',
            route: DeloadPage(),
          ),
          // RouteTile(
          //   title: 'Assistant Work',
          //   route: AssistancePage(),
          // ),
          RouteTile(
            title: 'Training Programs',
            route: TrainingProgramsPage(),
          ),
          RouteTile(
            title: 'Conditioning',
            route: ConditioningPage(),
          ),
          RouteTile(
            title: 'Recovery',
            route: RecoveryPage(),
          ),
          LaunchUrlListTile(
            title: 'Jim Wendler UGSS Presentation',
            url:
                'https://www.youtube.com/watch?v=u_Il5nOqLhY&list=PLbFxzzq99IUDeEwQSuXUTnDq3ytYSqRg4',
            icon: Icons.play_arrow,
          ),
          LaunchUrlListTile(
            title: 'Jim Wendler Sports Performance Summit 2018',
            url:
                'https://www.youtube.com/watch?v=N3g0LKUV8RM&list=PLbFxzzq99IUB5L1-VLNN2IdQgmVrGXjZS&index=1',
            icon: Icons.play_arrow,
          ),
          LaunchUrlListTile(
            title: 'Buy the books',
            url: 'https://jimwendler.com/collections/books-programs',
          ),
        ],
      ),
    );
  }
}
