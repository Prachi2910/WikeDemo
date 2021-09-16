import 'package:demo/constant/colors.constants.dart';
import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/validation.constants.dart';
import 'package:demo/support/textfield.widget.dart';
import 'package:demo/support/visual_handler.widget.dart';
import 'package:demo/ui/dashboard/viewmodel/bottom_sheet.viewmodel.dart';
import 'package:demo/ui/dashboard/viewmodel/dashboard.viewmodel.dart';
import 'package:demo/ui/dashboard/widgets/add_new_wiki.widget.dart';
import 'package:demo/ui/dashboard/widgets/tab_container.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class DashboardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = context.watch<DashboardViewModel>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      color: Colors.transparent,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 4)],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kCardRadius),
                    topRight: Radius.circular(kCardRadius))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabContainer(
                  icon: Icons.home_outlined,
                  iconColor: dashboardProvider.currentIndex == 0
                      ? Colors.deepOrange
                      : Colors.grey.shade700,
                  containerColor: dashboardProvider.currentIndex == 0
                      ? Colors.deepOrange.withOpacity(.1)
                      : Colors.grey.shade700.withOpacity(.1),
                  callback: () {
                    dashboardProvider.setPageController(0);
                  },
                ),
                Container(width: MediaQuery.of(context).size.width * 0.20),
                TabContainer(
                  icon: Icons.chat_bubble_outline_rounded,
                  iconColor: dashboardProvider.currentIndex == 1
                      ? Colors.deepOrange
                      : Colors.grey.shade700,
                  containerColor: dashboardProvider.currentIndex == 1
                      ? Colors.deepOrange.withOpacity(.1)
                      : Colors.grey.shade700.withOpacity(.1),
                  callback: () {
                    dashboardProvider.setPageController(1);
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: TabContainer(
              icon: Icons.add,
              shadow: [
                BoxShadow(
                  color: accentGreen,
                  blurRadius: 30,
                  offset: Offset(0, 10),
                )
              ],
              iconColor: Colors.white,
              containerColor: accentGreen,
              callback: () {
                _modalBottomSheetMenu(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(kCardRadius),
              topLeft: Radius.circular(kCardRadius)),
        ),
        backgroundColor: Colors.white,
        isScrollControlled: true,
        builder: (builder) {
          return ChangeNotifierProvider<BottomSheetViewModel>(
            create: (_) => BottomSheetViewModel(),
            builder: (context, child) {
              return AddNewWiki();
            },
          );
        });
  }
}
