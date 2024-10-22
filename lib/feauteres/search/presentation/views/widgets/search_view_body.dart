import 'package:bookly_app/core/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView( // Wrap with CustomScrollView
        slivers: [
          SliverToBoxAdapter( // Use SliverToBoxAdapter for non-sliver widgets
            child: Column(
              children: [
                CustomSearchTextField(),
                SizedBox(height: 16),
              ],
            ),
          ),
          SearchResult(), // Your SliverList
        ],
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0 ,vertical: 10),
            child: BestSellerListViewItem(),
          );
        },
        childCount: 10, // Or your desired item count
      ),
    );
  }
}