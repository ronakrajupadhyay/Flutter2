import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fancy Favorite Button')),
        body: Center(
          child: FancyFavoriteButton(),
        ),
      ),
    );
  }
}

class FancyFavoriteButton extends StatefulWidget {
  @override
  _FancyFavoriteButtonState createState() => _FancyFavoriteButtonState();
}

class _FancyFavoriteButtonState extends State<FancyFavoriteButton>
    with SingleTickerProviderStateMixin {
  bool isFavorited = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );

    _scaleAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 1.0), weight: 50),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
  }

  void toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFavorite,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Icon(
              isFavorited ? Icons.favorite : Icons.favorite_border,
              color: isFavorited
                  ? Colors.red.withOpacity(0.9)
                  : Colors.grey.withOpacity(0.7),
              size: 60,
            ),
          );
        },
      ),
    );
  }
}
