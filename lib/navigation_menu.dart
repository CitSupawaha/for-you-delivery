import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/shop/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 72,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.home_25,
                  ),
                  icon: Icon(
                    Iconsax.home_2,
                  ),
                  label: "Home"),
              NavigationDestination(
                  selectedIcon: Icon(Iconsax.shop5),
                  icon: Icon(
                    Iconsax.shop,
                  ),
                  label: "Shop"),
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.heart5,
                  ),
                  icon: Icon(
                    Iconsax.heart,
                  ),
                  label: "Wishlist"),
              NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.profile_circle5,
                  ),
                  icon: Icon(
                    Iconsax.profile_circle,
                  ),
                  label: "Profile")
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    )
  ];
}
