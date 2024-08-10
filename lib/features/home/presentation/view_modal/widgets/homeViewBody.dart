import 'package:bookley_appp/core/utils/assets.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 8.0),
      child:  Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
      BooksListView(),
        ],
      ),
    );
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:  CustomListViewItem(),
          );
        },

        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
