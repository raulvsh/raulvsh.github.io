import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String bookId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('books').doc(bookId).get(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final book = snapshot.data!;
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book['title'],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Author: ${book['author']}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                Image.network(book['coverImage']),
                SizedBox(height: 16),
                Text(
                  book['summary'],
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Open PDF link
                  },
                  child: Text('Read Summary PDF'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
