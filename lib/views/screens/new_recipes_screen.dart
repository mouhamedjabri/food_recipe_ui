import 'package:flutter/material.dart';

import '../../constant/const.dart';
import '../widget/cosstom_app_bar.dart';
import '../widget/recipie_item.dart';

class NewRecipesScreen extends StatefulWidget {
  const NewRecipesScreen({Key? key}) : super(key: key);

  @override
  State<NewRecipesScreen> createState() => _NewRecipesScreenState();
}

class _NewRecipesScreenState extends State<NewRecipesScreen> {
  PageController pageController = PageController();
  PageController pageControllertwo = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: ListView(
                padding: EdgeInsets.only(bottom: 20),
                children:[
                  RecipieItem(titel: "Garlicky Ginger Noodle Soup with Swiss Chard ",
                  pageController: pageController,
                  imgePath: recipeswan,
                  review: "5.0",
                  reviewStar: 5),
                  RecipieItem(titel: "Ginger Miso Soba Soup ",
                    pageController: pageControllertwo,
                    imgePath: recipestwo,
                    review: "4.5",
                      reviewStar: 3),
                ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
