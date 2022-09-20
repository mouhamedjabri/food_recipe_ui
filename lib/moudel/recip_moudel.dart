

import '../constant/const.dart';

class Recip{
  String titel;
   String review;
   int reviewNimber;
   List<String> imgPath;
  List<String> ingredients;
  Recip( this.titel,this.review,this.reviewNimber,this.imgPath,this.ingredients);

  static List<Recip> recipList = [
    Recip("Garlicky Ginger Noodle Soup with Swiss Chard ", "5.0", 5, [recipeswan,recipeswan,recipeswan,recipeswan], [
      "2 tsp vegetable or sesame oil",
      "1/2 cup yellow onion, finely-minced",
      "2 tsp fresh garlic, minced",
      "1 Tbsp fresh ginger, minced (or use crushed ginger paste)",
      "1 Tbsp low-sodium soy sauce or tamari ¹",
      "4 cups (32 oz) rich chicken or vegetable broth ²",
      "2 Tbsp miso paste (I use Miso Master or Westbrae Natural Mellow Red Miso)",
      "kosher salt and freshly-ground black pepper, to taste",
    ],),
    Recip("Ginger Miso Soba Soup ", "3.5", 3, [recipestwo,recipestwo,recipestwo,recipestwo], [
      "2 tsp olive oil",
      "1 Tbsp fresh garlic, finely-minced",
      "1–1/2 Tbsp fresh ginger, finely-minced",
      "1 bunch scallions, chopped and divided",
      "2 tsp sesame oil",
      "1 Tbsp tamari or soy sauce ¹",
      "4 cups rich chicken or vegetable broth",
      "4 oz ramen noodles ²",
      "1–1/2 cups Swiss chard, rough stems removed and chopped ³",
      "kosher salt and freshly-ground black pepper, to taste",
      "sesame seeds, for serving",
    ],),
  ];
}