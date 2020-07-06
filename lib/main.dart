import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/ui/model/bookmark_provider.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ContactsModel()
        ..awaitMethod()
        ..loadContacts(),
      // child: ScopedModel(
      //   model: ProgramTitleDBScopedModel()..loadPrograms(),
      child: ChangeNotifierProvider(
        create: (context) => Bookmark(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '5/3/1 Size & Strength & Conditioning',
          theme: ThemeData.dark(),
          home: LandingPage(),
        ),
      ),
    );
    // );
  }
}
