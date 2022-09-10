import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shopping/feature/category/category_page.dart';
import 'package:my_shopping/feature/home/home_page.dart';
import 'package:my_shopping/feature/profile/profile_page.dart';
import 'package:my_shopping/feature/shopping_cart/shopping_cart_page.dart';
import 'package:my_shopping/feature/tabs/pod/tab_pod.dart';
import 'package:my_shopping/feature/wishlist/wishlist_page.dart';
import 'package:flutter/cupertino.dart';

class AppTab extends ConsumerStatefulWidget {
  const AppTab({Key? key}) : super(key: key);
  @override
  AppTabState createState() => AppTabState();
}

class AppTabState extends ConsumerState<AppTab> {
  static const List<Widget> appTabs = <Widget>[
    HomePage(),
    CategoryPage(),
    WishlistPage(),
    ShoppingCartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final tabIndex = ref.watch(tabIndexProvider) as int;

        return Scaffold(
          body: Center(
            child: appTabs.elementAt(tabIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            type: BottomNavigationBarType.shifting,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                activeIcon: Icon(CupertinoIcons.house_fill),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_fill_line_vertical_square),
                activeIcon: Icon(CupertinoIcons.square_fill_line_vertical_square_fill),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_solid),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                activeIcon: Icon(CupertinoIcons.cart_fill),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                activeIcon: Icon(CupertinoIcons.person_fill),
                label: 'Profile',
              ),
            ],
            currentIndex: tabIndex,
            onTap: (int index) {
              ref.read(tabIndexProvider.notifier).value = index;
            },
          ),
        );
      },
    );
  }
}
