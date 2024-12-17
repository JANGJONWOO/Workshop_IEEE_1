import 'package:book_app/components/my_list_tile.dart';
import 'package:book_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // lOGO
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // shop
              MyListTile(
                  icon: Icons.home,
                  text: "Shop page",
                  onTap: () {
                    Navigator.pop(context);
                  }),

              // cart
              MyListTile(
                  icon: Icons.home,
                  text: "Cart page",
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),
          // exit
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.home,
              text: "Exit",
              onTap: () {
                // pop
                Navigator.pop(context);
                // navigate
                Navigator.pushNamed(context, 'intro_page');
              },
            ),
          )
        ],
      ),
    );
  }
}
