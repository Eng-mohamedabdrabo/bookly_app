import 'package:flutter/material.dart';

import 'book_item.dart';

class FeauteredListView extends StatelessWidget {
  const FeauteredListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: BookItem(),
            );
          }),
    );
  }
}
