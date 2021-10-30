import 'package:flutter/material.dart';


class Todo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return TodoState();
  }
}

class TodoState extends State<Todo> {

  int count = 0;
  String t1 = '';
  String d1 = '';

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();


    return Scaffold(

      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NoteDetail()));
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Add Event"),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: TextField(
                        controller: titleController,

                        onChanged: (value) {
                          debugPrint('Something changed in Title Text Field');
                        },
                        decoration: InputDecoration(
                            labelText: 'Title',

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            )
                        ),
                      ),
                    ),
                    // Third Element
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: TextField(
                        controller: descriptionController,
                        onChanged: (value) {
                          debugPrint('Something changed in Description Text Field');
                        },
                        decoration: InputDecoration(
                            labelText: 'Description',

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            )
                        ),
                      ),
                    ),

                    // Fourth Element
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ElevatedButton(

                              child: Text(
                                'Save',
                              ),
                              onPressed: () {
                                setState(() {
                                  t1 = titleController.text;
                                  d1 = descriptionController.text;
                                  Navigator.pop(context);
                                  debugPrint("Save button clicked");
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                            ),
                          ),

                          Container(width: 5.0,),

                          Expanded(
                            child: ElevatedButton(

                              child: Text(
                                'Delete',

                              ),
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),

                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )

            ),
          );

        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),

    );
  }

  ListView getNoteListView() {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text('Dummy Title',),
              subtitle: Text('Dummy Description'),
              trailing: Icon(Icons.delete, color: Colors.grey,),
              onTap: () {
              },
            ),
            t1.isEmpty? Container(): ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(t1,),
              subtitle: Text(d1),
              trailing: Icon(Icons.delete, color: Colors.grey,),
              onTap: () {
                setState(() {
                  t1 = '';
                  d1 = '';
                });
              },

            ),
          ],
        );
      },
    );
  }
}