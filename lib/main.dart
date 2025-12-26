// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Favorite Button Example')),
//         body: Center(
//           child: FavoriteButton(),
//         ),
//       ),
//     );
//   }
// }
//
// // StatefulWidget
// class FavoriteButton extends StatefulWidget {
//   @override
//   _FavoriteButtonState createState() => _FavoriteButtonState();
// }
//
// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool isFavorited = false; // State variable
//
//   void toggleFavorite() {
//     setState(() {
//       isFavorited = !isFavorited; // Toggle state
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         isFavorited ? Icons.favorite : Icons.favorite_border,
//         color: isFavorited ? Colors.red : Colors.grey,
//         size: 40,
//       ),
//       onPressed: toggleFavorite,
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'recipe_card.dart'; // custom widget file
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Recipe App"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: RecipeCard(
//             name: "Cheese Pasta",
//             imagePath: "assets/pasta (1).png",
//             time: "30 mins",
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'recipe_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeListPage(),
    );
  }
}

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  // 10 Recipes
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
      appBar: AppBar(
        title: const Text("Recipes"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            recipeName: recipes[index],
          );
        },
      ),
    );
  }
}
