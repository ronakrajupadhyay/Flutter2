import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _instructionsController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final recipeName = _nameController.text;
      final ingredients = _ingredientsController.text;
      final instructions = _instructionsController.text;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Recipe Added: $recipeName"),
        ),
      );

      Navigator.pop(context); // go back after submit
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ingredientsController.dispose();
    _instructionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Recipe")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              /// Recipe Name
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Recipe Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter recipe name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              /// Ingredients
              TextFormField(
                controller: _ingredientsController,
                decoration: const InputDecoration(
                  labelText: "Ingredients",
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter ingredients";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              /// Instructions
              TextFormField(
                controller: _instructionsController,
                decoration: const InputDecoration(
                  labelText: "Instructions",
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter instructions";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              /// Submit Button
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Submit Recipe"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
