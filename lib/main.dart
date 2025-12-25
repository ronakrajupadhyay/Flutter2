import 'package:flutter/material.dart';
import 'recipe_card.dart'; // custom widget file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Recipe App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: RecipeCard(
            name: "Cheese Pasta",
            imagePath: "assets/pasta (1).png",
            time: "30 mins",
          ),
        ),
      ),
    );
  }
}

