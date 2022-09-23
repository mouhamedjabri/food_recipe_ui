import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../moudel/recip_moudel.dart';
import '../screens/details_screen.dart';


class RecipieItem extends StatefulWidget {
  RecipieItem({Key? key,required this.titel,required this.review,required this.pageController,required this.imgePath,required this.meals}) : super(key: key);
  PageController pageController;
  String titel;
  int review;
  String imgePath;
  Meals meals;

  @override
  State<RecipieItem> createState() => _RecipieItemState();
}

class _RecipieItemState extends State<RecipieItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20,top: 10,left: 10,right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titel,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.review.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: List.generate(5, (index) => Icon(
                        Icons.star,
                        color: index <= widget.review-1 ?Colors.green:Colors.green.shade100,
                        size: 20,
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    child: Image.network(
                      widget.imgePath,
                      fit: BoxFit.cover,
                    ),
                  )
                  // PageView(
                  //   scrollDirection: Axis.vertical,
                  //   children:
                  //   List.generate(4, (index) => ClipRRect(
                  //     borderRadius: BorderRadius.only(
                  //         bottomRight: Radius.circular(15),
                  //         bottomLeft: Radius.circular(15)),
                  //     child: Image.network(
                  //       widget.imgePath,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),),
                  //   controller: widget.pageController,
                  // ),
                ),
              ),
              // Positioned(
              //   right: 10,
              //   top: 20,
              //   child: SmoothPageIndicator(
              //       axisDirection: Axis.vertical,
              //       controller: widget.pageController,
              //       // PageController
              //       count: 4,
              //       effect: WormEffect(
              //           dotColor: Colors.grey,
              //           activeDotColor: Colors.black,
              //           dotHeight: 10,
              //           dotWidth: 10),
              //       // your preferred effect
              //       onDotClicked: (index) {
              //         widget.pageController.jumpToPage(index);
              //       }),
              // ),
              Positioned(
                  bottom: -20,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(meals: widget.meals,review: widget.review-1,)));
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 40),
                            ],
                            borderRadius: BorderRadius.all(
                                Radius.circular(25)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "Prepar",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        )),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

