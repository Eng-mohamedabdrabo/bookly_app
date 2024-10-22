import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

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