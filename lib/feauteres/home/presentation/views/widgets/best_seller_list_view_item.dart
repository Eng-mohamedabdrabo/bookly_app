import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import 'best_seller_ranking_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.9 / 4,
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://assets.adidas.com/images/w_940,f_auto,q_auto/fd0c862cca3c4d1eb970b4c1115e773f_9366/IU7914_01_laydown.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Harry potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      )),
                  const SizedBox(height: 3,),
                  Opacity(opacity:0.6, child:  Text('J.K. Rowling' , style: Styles.textStyle14.copyWith(fontStyle: FontStyle.italic),)),
                  const SizedBox(height: 3,),
                  SizedBox(
                    child: Row(
                      children: [
                        Text('19.99 €' ,  style:  Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),),
                        const Spacer(),
                        const RankingWidget()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


