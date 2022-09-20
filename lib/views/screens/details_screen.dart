import 'package:flutter/material.dart';

import '../../constant/const.dart';
import '../../moudel/recip_moudel.dart';


class DetailsScreen extends StatefulWidget {
   DetailsScreen({Key? key,required this.index}) : super(key: key);
  int index;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  Widget build(BuildContext context) {
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
                    Image.asset(
                      Recip.recipList[widget.index].imgPath[0],
                      fit: BoxFit.cover,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
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
          SafeArea(child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0,left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("The", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                        color: Colors.white),),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                Text(Recip.recipList[widget.index].titel, style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Colors.white),),
                Row(
                  children: List.generate(5, (index) =>
                      Icon(Icons.star,
                        color: index <=  Recip.recipList[widget.index].reviewNimber? Colors.white: Colors
                            .grey,)),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 40),
                        ],
                        borderRadius: BorderRadius.all(
                            Radius.circular(25)),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        ListView(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
                          children: [
                            Text("INGREDIENTS",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.black),),
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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: Column(
                                children: List.generate(Recip.recipList[widget.index].ingredients.length, (index) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(Recip.recipList[widget.index].ingredients[index],style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.grey,),softWrap: true,),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Text("----------------------------------",style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: Colors.grey),),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ),
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
                                  height: 50,width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(plane,height: 50,width: 50,color: Colors.blue,),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 50,width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(save,height: 50,width: 50,color: Colors.red,),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 50,width: 50,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      color: Colors.white),
                                  child: Image.asset(cart,height: 50,width: 50,color: Colors.green,),
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
