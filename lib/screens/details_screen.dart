import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image
            Image.asset(recipe.imagePath, height: 220, width: double.infinity, fit: BoxFit.cover),
            // Name, Ingredients, Instructions…
            const SizedBox(height: 16),
            
            Padding( //Name
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(recipe.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold,))
            ),
            const SizedBox(height: 16),

            const Padding( //Ingredients
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Ingredients', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,))
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipe.ingredients.map((ingredient) => Text("• $ingredient"),).toList(),
              ),
            ),
            const SizedBox(height: 20),
            
            const Padding( //Instructions
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Instructions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(recipe.instructions, style: const TextStyle(fontSize: 16),),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}