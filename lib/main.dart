import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Favorite Button Example')),
        body: Center(
          child: FavoriteButton(),
        ),
      ),
    );
  }
}

// StatefulWidget
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorited = false; // State variable

  void toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited; // Toggle state
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorited ? Icons.favorite : Icons.favorite_border,
        color: isFavorited ? Colors.red : Colors.grey,
        size: 40,
      ),
      onPressed: toggleFavorite,
    );
  }
}
