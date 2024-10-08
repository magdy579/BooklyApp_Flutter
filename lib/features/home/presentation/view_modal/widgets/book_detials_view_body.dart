import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookDetailsAppBar.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  Padding(

      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
      const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width *.2),
            child: const CustomBookImage(),


          ),
          const SizedBox(
            height: 43,
          ),
          const Text('The Jungle Book',style: Style.textStyle30,),
          const SizedBox(
            height: 5,
          ),
          const Text('Rudyard Kipling',style: Style.textStyle18,),

        ],
      ),
    );
  }
}

