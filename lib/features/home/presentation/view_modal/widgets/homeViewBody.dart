import 'package:bookley_appp/core/utils/assets.dart';
import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/BooksListView.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 24.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
      BooksListView(),
          SizedBox(height: 50,),
          Text('Best Seller',style: Style.titleM )
        ],
      ),
    );
  }
}


