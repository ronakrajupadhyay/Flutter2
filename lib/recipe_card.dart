// import 'package:flutter/material.dart';
//
// class RecipeCard extends StatelessWidget {
//   final String name;
//   final String imagePath;
//   final String time;
//
//   const RecipeCard({
//     super.key,
//     required this.name,
//     required this.imagePath,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(
//               top: Radius.circular(15),
//             ),
//             child: Image.asset(
//               imagePath,
//               height: 150,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//
//                 Row(
//                   children: [
//                     const Icon(Icons.timer, size: 18),
//                     const SizedBox(width: 5),
//                     Text(time),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String recipeName;

  const RecipeCard({super.key, required this.recipeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.restaurant, color: Colors.orange),
        title: Text(
          recipeName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text("Tap to view recipe"),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
