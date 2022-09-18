import 'package:flutter/material.dart';

import '../../constant/const.dart';
import 'new_recipes_screen.dart';


class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewRecipesScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset(cart,width: 35,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Image.asset(safari,width: 35,color: Colors.red,),label: ""),
          BottomNavigationBarItem(icon: Image.asset(home,width: 35,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Image.asset(user,width: 35,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Image.asset(menu,width: 35,color: Colors.grey,),label: ""),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
