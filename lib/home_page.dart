import 'package:flutter/material.dart';
import 'add_recipe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               'Popular Recipes',
               style: Theme.of(context).textTheme.titleLarge,
               ),

             SizedBox(height: 12),

             Text(
                 '- Maggie',
                  style: Theme.of(context).textTheme.bodyMedium,
             ),
             Text('- Pasta',
                  style: Theme.of(context).textTheme.bodyMedium,
             ),
             Text('- Tea',
                  style: Theme.of(context).textTheme.bodyMedium,
             ),
           ],
         ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddRecipePage(),
                ),
              );
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}