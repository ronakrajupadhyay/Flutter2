import 'package:flutter/material.dart';
import 'recipe_card.dart';
import 'recipe_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      initialRoute: '/',
      routes: {
        '/': (context) => const RecipeListPage(),
        '/detail': (context) => const RecipeDetailPage(),
      },
    );
  }
}

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  final List<String> recipes = const [
    "Paneer Butter Masala",
    "Veg Biryani",
    "Masala Dosa",
    "Chole Bhature",
    "Rajma Chawal",
    "Aloo Paratha",
    "Pav Bhaji",
    "Fried Rice",
    "Veg Pulao",
    "Dal Tadka",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipes")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            recipeName: recipes[index],
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
                arguments: recipes[index], // 👈 passing data
              );
            },
          );
        },
      ),
    );
  }
}
