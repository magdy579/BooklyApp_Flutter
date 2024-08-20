import 'package:bookley_appp/const.dart';
import 'package:bookley_appp/core/utils/app_router.dart';
import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/Ratting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child:  Row(
            children: [
              AspectRatio(
                aspectRatio: 2.4 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.testBook),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(width: 30,),
        
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.5,
                      child:
                      Text(
                        'Sorry I’m Harry Sorry I’m Harry Sorry I’m Harry Sorry I’m Harry' ,
                        style: Style.textStyle20.copyWith(fontFamily: kGtSectraFine,),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
        
                    ),
                    const SizedBox(height: 3,),
                    const Text('j.k .Rowling', style: Style.textStyle14,
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('19.99 \$',style: Style.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                         const BookRating(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}
