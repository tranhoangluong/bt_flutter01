import 'package:bt_flutter01/main.dart';
import 'package:bt_flutter01/screen/product_list_screen.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Product List'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, ProductListScreen.routeName);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Shop Product List'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, ShopProductListScreen.routeName);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
