import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  const CategoryItem(this.title, this.color, this.id, {super.key});

  void selectCategory(BuildContext ctx) {
    // print("i am category");
    // Navigator.of(ctx).push(
    //     MaterialPageRoute(builder: (_) => CategoryMealsScreen(id, title)));
    Navigator.pushNamed(ctx, CategoryMealsScreen.routeName,
        arguments: {'id': id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}
