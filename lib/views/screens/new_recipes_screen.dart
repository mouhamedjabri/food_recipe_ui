import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../constant/const.dart';
import '../../moudel/recip_moudel.dart';
import '../widget/cosstom_app_bar.dart';
import '../widget/recipie_item.dart';
import 'package:http/http.dart'as http;

class NewRecipesScreen extends StatefulWidget {
  const NewRecipesScreen({Key? key}) : super(key: key);

  @override
  State<NewRecipesScreen> createState() => _NewRecipesScreenState();
}

class _NewRecipesScreenState extends State<NewRecipesScreen> {
  PageController pageController = PageController();
  PageController pageControllertwo = PageController();
  Recipe? recipe;
  Random random = Random();
  
  Future<Recipe> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?f=a'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Recipe.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  
  getData()async{
    recipe= await fetchAlbum();
    print(recipe!.meals![0].strCategory);
    setState(() {
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return recipe ==null?Center(child: CircularProgressIndicator(color: Colors.blue,)):Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              shape,
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            CosstomAppBar(),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 90, bottom: 20),
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: recipe!.meals!.length,
                padding: EdgeInsets.only(bottom: 20),
                itemBuilder: (context,index){
                  return RecipieItem(titel: recipe!.meals![index].strMeal.toString(),
                    pageController: pageController,
                    imgePath: recipe!.meals![index].strMealThumb.toString(),
                    review: random.nextInt(5),
                    meals: recipe!.meals![index],
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
