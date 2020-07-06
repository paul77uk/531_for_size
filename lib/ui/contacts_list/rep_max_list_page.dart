import 'package:five_three_one_forever_app/ui/contact/create_contact_page.dart';
import 'package:five_three_one_forever_app/ui/contact/edit_contact_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class RepMaxPage extends StatefulWidget {
  final int contactIndex;

  const RepMaxPage({Key key, this.contactIndex}) : super(key: key);

  @override
  _RepMaxPageState createState() => _RepMaxPageState();
}

class _RepMaxPageState extends State<RepMaxPage> {
  @override
  void initState() {
    super.initState();
    ContactsModel().loadContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maxes'),
      ),
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        if (model.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: model.contacts.length,
            // Runs & builds every single list item
            itemBuilder: (context, index) {
              return Dismissible(
                // secondaryBackground: Icon(
                //   Icons.delete,
                //   color: Colors.red,
                // ),
                key: UniqueKey(),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    model.deleteContact(model.contacts[index]);
                    model.contacts.removeAt(index);
                  });
                },
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        model.contacts[index].lift,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '1 Rep Max: ${model.contacts[index].repMax}\nTraining Max: ${model.contacts[index].trainingMax}',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ContactEditPage(
                            editedContact: model.contacts[index],
                          ),
                        ));
                      },
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ContactCreatePage(),
            ));
          }),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key key,
    this.model,
    this.index,
  }) : super(key: key);

  final ContactsModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 8)),
        ListTile(
          title: Text(
            model.contacts[index].lift,
            textAlign: TextAlign.center,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '1 Rep Max: ${model.contacts[index].repMax}\nTraining Max: ${model.contacts[index].trainingMax}',
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ContactEditPage(
                editedContact: model.contacts[index],
              ),
            ));
          },
        ),
        Divider(),
      ],
    );
  }
}
