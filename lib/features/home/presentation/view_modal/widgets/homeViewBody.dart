import 'package:bookley_appp/core/utils/assets.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 30,
        ),
        CustomListViewItem(),

        // ListView.builder(itemBuilder: (context, index) {
        //   return Row(
        //     children: [
        //       Image.asset(AssetsData.testBook),
        //     ],
        //   );
        // },
        //   itemCount: 10,
        // scrollDirection: Axis.horizontal,)
      ],
    );
  }
}

