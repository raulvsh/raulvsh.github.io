import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BooksMainScreen extends StatelessWidget {
  const BooksMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Summaries'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('books').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final books = snapshot.data!.docs;

          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index].data() as Map<String, dynamic>;
              return ListTile(
                title: Text(book['title']),
                subtitle: Text('By ${book['author']}'),
                leading: Image.network(book['coverImage']),
                onTap: () {
                  // Aquí puedes implementar la acción al tocar un libro
                },
              );
            },
          );
        },
      ),
    );
  }
}
