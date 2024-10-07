import 'package:aqmps/models/menu_model.dart';
import 'package:iconsax/iconsax.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Iconsax.home, title: 'Dashboard'),
    MenuModel(icon: Iconsax.health, title: 'Learn More'),
    MenuModel(icon: Iconsax.setting, title: 'Settings'),
    MenuModel(icon: Iconsax.location, title: 'Location'),
    MenuModel(icon: Iconsax.data, title: 'Data')
  ];
}
