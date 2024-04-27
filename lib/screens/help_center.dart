// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF151F30),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 22, 65),
          title: Center(
            child: Text(
              'Help Center',
              style: TextStyle(
                color: Color(0xFFDEB887), 
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.help),
              color: Color(0xFFDEB887), 
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Follow the steps below'),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to the Todo App",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "This app is designed to help you organize your tasks effectively. With this app, you can easily add, manage, and complete your todos.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Getting Started:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "1. Adding Todos:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "- To add a new todo, tap the \"+\" button located at the bottom of the screen.",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "- Enter the task.",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "- Tap \"Save\" to add the todo to your list.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "2. Viewing Todos:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "- Once you've added todos, they will be displayed on the main screen in a list format.",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "- Each todo will show its title and description.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "3. Completing Todos:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "- When you've completed a task, simply tap on the checkbox next to the todo to mark it as complete.",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "- Completed todos will be checked and also you can view them in the completed tasks tab in the drawer.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "4. Deleting Todos:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "- To delete a todo, swipe left or right on the todo item you wish to delete.",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "- Confirm the deletion when prompted.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "5. Searching:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "- Use the search feature to quickly find specific todos by their title or description.",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: FAQPage(),
        ));
  }
}

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State {
  final List<String> questions = [
    'What is Flutter?',
    'How do I install Flutter?',
    'What are widgets in Flutter?',
    'How do I create a Flutter project?',
  ];

  final List<String> answers = [
    'Flutter is a UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    'You can install Flutter by following the instructions provided in the official Flutter documentation.',
    'Widgets are the building blocks of Flutter UI. Everything in Flutter is a widget.',
    'You can create a Flutter project using the `flutter create` command in the terminal or by using the New Project option in your IDE.'
  ];

  void _addFAQ() {
    showDialog(
      context: context,
      builder: (context) {
        String newQuestion = '';
        String newAnswer = '';
        return AlertDialog(
          title: Text('Add FAQ'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Question'),
                onChanged: (value) {
                  newQuestion = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Answer'),
                onChanged: (value) {
                  newAnswer = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  questions.add(newQuestion);
                  answers.add(newAnswer);
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF151F30),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'FAQS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.5,
                 
                  // ignore: sort_child_properties_last
                  child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            questions[index],
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            answers[index],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  secondaryActions: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            setState(() {
                              questions.removeAt(index);
                              answers.removeAt(index);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addFAQ,
        tooltip: 'Add FAQ',
        child: Icon(Icons.add),
      ),
    );
  }
}
