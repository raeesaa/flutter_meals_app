import 'package:flutter/material.dart';
import './widgets/screens/category_meals.dart';
import './widgets/screens/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute:
          '/', // default is '/'. Therefore, there is no need to set this attribute unless we want route other than / to be first screen
      routes: {
        '/': (BuildContext ctx) => CategoriesScreen(),
        CategoryMeals.routeName: (BuildContext ctx) => CategoryMeals(),
      },
    );
  }
}
