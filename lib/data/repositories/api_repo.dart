import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_list/data/repositories/recipe_repo.dart';

class RecipeApiRepo {
  static Future<List<RecipeRepo>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list",
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'c1d07678ccmshffafc90ed928c3cp1fedf4jsnc5edface4534',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
      "useQueryString": "true"
    });
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    return RecipeRepo.recipesFromSnapshot(_temp);
  }
}
