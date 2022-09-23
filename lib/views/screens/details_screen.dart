import 'package:flutter/material.dart';

import '../../constant/const.dart';
import '../../moudel/recip_moudel.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, required this.meals, required this.review})
      : super(key: key);
  Meals meals;
  int review;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  List<String> fiballIngredientList = [];

  getstrIngredient() {
    List<String> lst = [];
    List<String> strIngredient = [];
    List<String> IngredientList = [];

    strIngredient.add(widget.meals.strIngredient1.toString());
    strIngredient.add(widget.meals.strIngredient2.toString());
    strIngredient.add(widget.meals.strIngredient3.toString());
    strIngredient.add(widget.meals.strIngredient4.toString());
    strIngredient.add(widget.meals.strIngredient5.toString());
    strIngredient.add(widget.meals.strIngredient6.toString());
    strIngredient.add(widget.meals.strIngredient7.toString());
    strIngredient.add(widget.meals.strIngredient8.toString());
    strIngredient.add(widget.meals.strIngredient9.toString());
    strIngredient.add(widget.meals.strIngredient10.toString());
    strIngredient.add(widget.meals.strIngredient11.toString());
    strIngredient.add(widget.meals.strIngredient12.toString());
    strIngredient.add(widget.meals.strIngredient13.toString());
    strIngredient.add(widget.meals.strIngredient14.toString());
    strIngredient.add(widget.meals.strIngredient15.toString());
    strIngredient.add(widget.meals.strIngredient16.toString());
    strIngredient.add(widget.meals.strIngredient17.toString());
    strIngredient.add(widget.meals.strIngredient18.toString());
    strIngredient.add(widget.meals.strIngredient19.toString());
    strIngredient.add(widget.meals.strIngredient20.toString());

    lst.add(widget.meals.strIngredient1.toString() +
        "  " +
        widget.meals.strMeasure1.toString());
    lst.add(widget.meals.strIngredient2.toString() +
        "  " +
        widget.meals.strMeasure2.toString());
    lst.add(widget.meals.strIngredient3.toString() +
        "  " +
        widget.meals.strMeasure3.toString());
    lst.add(widget.meals.strIngredient4.toString() +
        "  " +
        widget.meals.strMeasure4.toString());
    lst.add(widget.meals.strIngredient5.toString() +
        "  " +
        widget.meals.strMeasure5.toString());
    lst.add(widget.meals.strIngredient6.toString() +
        "  " +
        widget.meals.strMeasure6.toString());
    lst.add(widget.meals.strIngredient7.toString() +
        "  " +
        widget.meals.strMeasure7.toString());
    lst.add(widget.meals.strIngredient8.toString() +
        "  " +
        widget.meals.strMeasure8.toString());
    lst.add(widget.meals.strIngredient9.toString() +
        "  " +
        widget.meals.strMeasure9.toString());
    lst.add(widget.meals.strIngredient10.toString() +
        "  " +
        widget.meals.strMeasure10.toString());
    lst.add(widget.meals.strIngredient11.toString() +
        "  " +
        widget.meals.strMeasure11.toString());
    lst.add(widget.meals.strIngredient12.toString() +
        "  " +
        widget.meals.strMeasure12.toString());
    lst.add(widget.meals.strIngredient13.toString() +
        "  " +
        widget.meals.strMeasure13.toString());
    lst.add(widget.meals.strIngredient14.toString() +
        "  " +
        widget.meals.strMeasure14.toString());
    lst.add(widget.meals.strIngredient15.toString() +
        "  " +
        widget.meals.strMeasure15.toString());
    lst.add(widget.meals.strIngredient16.toString() +
        "  " +
        widget.meals.strMeasure16.toString());
    lst.add(widget.meals.strIngredient17.toString() +
        "  " +
        widget.meals.strMeasure17.toString());
    lst.add(widget.meals.strIngredient18.toString() +
        "  " +
        widget.meals.strMeasure18.toString());
    lst.add(widget.meals.strIngredient19.toString() +
        "  " +
        widget.meals.strMeasure19.toString());
    lst.add(widget.meals.strIngredient20.toString() +
        "  " +
        widget.meals.strMeasure20.toString());

    strIngredient.forEach((element) {
      if (element != ""&&element != "null") {
        IngredientList.add(element);
      }
    });

    for (int i = 0; i < IngredientList.length; i++) {
        fiballIngredientList.add(lst[i]);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getstrIngredient();
  }

  @override
  // TODO: implement widget
  DetailsScreen get widget => super.widget;

  @override
  Widget build(BuildContext context) {
    // for(int i=0;i<lst.length;i++){
    //   if(lst[i] != ""){
    //     if(lst[i] != null){
    //       print(lst[i]);
    //       setState(() {
    //         finallList.add(lst[i]);
    //       });
    //     }
    //   }
    // }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            shadows: [Shadow(color: Colors.black, blurRadius: 20)],
            size: 40,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.network(
                      widget.meals.strMealThumb.toString(),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black38, Colors.black38],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "The",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.meals.strMeal.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                      color: Colors.white),
                ),
                Row(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: index <= widget.review
                                ? Colors.white
                                : Colors.grey,
                          )),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 40),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        ListView(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 30, bottom: 40),
                          children: [
                            Text(
                              "INGREDIENTS",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ),
                            ),
                            Column(
                              children: List.generate(
                                  fiballIngredientList.length,
                                  (index) => Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      fiballIngredientList[index])),
                                            ],
                                          ),
                                          Center(
                                            child: SizedBox(
                                              height: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 30.0),
                                                child: Text(
                                                  "----------------------------------",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 10,
                          left: 80,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(
                                    plane,
                                    height: 50,
                                    width: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(
                                    save,
                                    height: 50,
                                    width: 50,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(
                                    cart,
                                    height: 50,
                                    width: 50,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
