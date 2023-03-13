import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('this works !'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          firestore
              .collection('chats/TN0ft6TJj7JVY77vUGCf/messages')
              .snapshots()
              .listen(
            (data) {
              // print(data.  documents[0]['text']);
            },
          );
        },
      ),
    );
  }
}
