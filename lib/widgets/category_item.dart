import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './screens/category_meals.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;

  const CategoryItem(Key key, this._category);

  void _onSelectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMeals.routeName, arguments: {
      'id': _category.id,
      'title': _category.title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onSelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            _category.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _category.color.withOpacity(0.7),
              _category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
