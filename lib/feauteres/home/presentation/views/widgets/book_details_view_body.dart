import 'package:bookly_app/feauteres/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(
                  height: 40,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 51,
                  ),
                ),
                SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );

  }
}


