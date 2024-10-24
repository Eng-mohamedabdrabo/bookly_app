import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class RankingWidget extends StatelessWidget {
   const RankingWidget({super.key,this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const FaIcon(FontAwesomeIcons.solidStar , color: Color(0xffFFDD4F),size: 16,),
        const SizedBox(width: 8,),
         Text('4.8' , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),),
        const SizedBox(width: 8,),
        Text('(2990)' , style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),)
      ],
    );
  }
}
