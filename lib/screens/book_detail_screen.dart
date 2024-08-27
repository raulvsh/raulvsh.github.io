import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String bookId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('books').doc(bookId).get(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final book = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book['title'],
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Author: ${book['author']}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                Image.network(book['coverImage']),
                const SizedBox(height: 16),
                Text(
                  book['summary'],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Open PDF link
                  },
                  child: const Text('Read Summary PDF'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
