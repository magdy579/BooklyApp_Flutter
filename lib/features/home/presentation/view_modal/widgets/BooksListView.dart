import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customListView.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
              padding:  EdgeInsets.only(right: 8.0),
            child:  CustomListViewItem(),
          );
        },
itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}