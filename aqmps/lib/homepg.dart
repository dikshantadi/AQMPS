import 'package:aqmps/Constant/Constant.dart';
import 'package:aqmps/util/responsive.dart';
import 'package:aqmps/widget/Dashboard.dart';
import 'package:aqmps/widget/side_menu_widget.dart';
import 'package:aqmps/widget/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
        drawer: !isDesktop
            ? Container(color: backgroundColor, child: const SideMenuWidget())
            : null,
        endDrawer: Responsive.isMobile(context)
            ? SafeArea(
              child: Container(
                  color: backgroundColor,
                  child: const SummaryWidget(),
                ),
            )
            : null,
        body: SafeArea(
          child: Row(
            children: [
              if (isDesktop)
                const Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: SideMenuWidget(),
                    )),
              const Expanded(flex: 7, child: Dashboard()),
              if (isDesktop)
                const Expanded(
                  flex: 3,
                  child: SummaryWidget(),
                )
            ],
          ),
        ));
  }
}
