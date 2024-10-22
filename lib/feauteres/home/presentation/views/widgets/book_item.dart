import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: NetworkImage('https://assets.adidas.com/images/w_940,f_auto,q_auto/fd0c862cca3c4d1eb970b4c1115e773f_9366/IU7914_01_laydown.jpg'),fit: BoxFit.fill)

        ),
      ),
    );
  }
}
