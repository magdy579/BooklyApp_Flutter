import 'package:bookley_appp/features/home/presentation/view_modal/widgets/BooksListView.dart';
import 'package:bookley_appp/features/search/presentation/Widgets/CustomSearchTextField.dart';
import 'package:bookley_appp/features/search/presentation/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/styls.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Best Seller',
            style: Style.textStyle18,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
