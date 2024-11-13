import 'package:aqmps/Constant/Constant.dart';
import 'package:aqmps/Data/side_menu_data.dart';
import 'package:aqmps/pages/about_us_page.dart';
import 'package:aqmps/pages/learn_more.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Container(
        child: ListView.builder(
            itemCount: data.menu.length,
            itemBuilder: (context, index) => buildMenuEntry(data, index)),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          color: isSelected ? selectionColor : Colors.transparent),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });

          // Navigation based on the title
          switch (data.menu[index].title) {
            case 'Learn More':
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LearnMore()));
            case 'About Us':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
              break;
            default:
              break;
          }
        },
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Icon(data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey),
          ),
          Text(
            data.menu[index].title,
            style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
