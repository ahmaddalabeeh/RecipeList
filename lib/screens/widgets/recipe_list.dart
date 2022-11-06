import 'package:flutter/material.dart';
import 'package:recipe_list/screens/widgets/recipe_card.dart';

import '../../data/repositories/api_repo.dart';
import '../../data/repositories/recipe_repo.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  List<RecipeRepo>? _recipeRepo;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipeRepo = await RecipeApiRepo.getRecipe();
    setState(() {
      _isLoading = false;
    });
    print(_recipeRepo);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: _recipeRepo?.length,
            itemBuilder: (context, index) => RecipeCard(
                  title: _recipeRepo![index].name,
                  cookTime: _recipeRepo![index].totalTime,
                  rating: _recipeRepo![index].rating.toString(),
                  thumbnailUrl: _recipeRepo![index].images,
                  id: _recipeRepo![index].id.substring(0, 2),
                ));
  }
}
