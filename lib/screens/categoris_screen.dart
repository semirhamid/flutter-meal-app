import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CatergoriesScreen extends StatelessWidget {
  const CatergoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: GridView(
            children: DUMMY_CATEGORIES
                .map((catData) =>
                    CategoryItem(catData.title, catData.color, catData.id))
                .toList(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            )));
  }
}
