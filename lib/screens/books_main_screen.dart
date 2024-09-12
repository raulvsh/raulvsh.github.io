import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:raulvelasco_dev/styles.dart';

class BooksMainScreen extends StatelessWidget {
  const BooksMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //padding: AppPaddings.screenPadding,
      width: double.infinity,
      child:
          /*appBar: AppBar(
        title: const Text('Resúmenes de libros'),
      ),*/
          Card(
        shape: AppCardStyles.roundedRectangleBorder2,
        color: AppColors.transparentCardBackground,
        //padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: AppPaddings.cardPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Resúmenes de libros',
                  style: AppTextStyles.title,
                ),
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                      FirebaseFirestore.instance.collection('books').snapshots(),
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
                          //leading: Image.network(book['coverImage']),
                          leading: _buildCoverImage(),
                          onTap: () {
                            if (kDebugMode) {
                              print('Pulsado ${book['title']}');
                            }
                            // Aquí puedes implementar la acción al tocar un libro
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Image _buildCoverImage() {
    return Image.network(
      'https://prodimage.images-bn.com/pimages/9780804169615_p0_v3_s1200x630.jpg',
      width: 50.0, // Puedes ajustar el tamaño según necesites
      height: 50.0, // Puedes ajustar el tamaño según necesites
      fit: BoxFit.cover, // Ajusta el ajuste de la imagen
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child; // Imagen cargada
        } else {
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          ); // Muestra un indicador de carga mientras se carga la imagen
        }
      },
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error,
            color: Colors.red); // Muestra un icono en caso de error
      },
    );
  }
}
