// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unrelated_type_equality_checks, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateNoteScreen extends StatefulWidget {
  const CreateNoteScreen({Key? key});

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {
  TextEditingController addnoteController = TextEditingController();
  User? userId = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Create Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 239, 218),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: addnoteController,
                  maxLines: null,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                    hintText: "Add a note",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                var noteData = addnoteController.text.trim();
                if (noteData.isNotEmpty) {
                  try {
                    await FirebaseFirestore.instance.collection("notes").add({
                      "createdAt": Timestamp.now(),
                      "note": noteData,
                      "userId": userId?.uid,
                    });

                    addnoteController.clear();

                    Navigator.pop(context);
                  } catch (e) {
                    print("Error: $e");
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                elevation: 3,
              ),
              child: Text(
                "Add Note",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
