import 'package:demo/ui/dashboard/viewmodel/dashboard.viewmodel.dart';
import 'package:demo/ui/dashboard/widgets/dashboard_menu.widget.dart';
import 'package:demo/ui/home/screen/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DashboardViewModel>(
      create: (_) => DashboardViewModel(),
      builder: (context, child) {
        return DashboardBody();
      },
    );
  }
}

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = context.watch<DashboardViewModel>();
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: dashboardProvider.pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (i) {
              dashboardProvider.setCurrentPage(i);
            },
            children: [
              HomeScreen(),
              Container(
                  child: Center(
                      child: Text(
                "No Notification added yet!",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ))),
            ],
          ),
          Positioned(bottom: 0, child: DashboardMenu())
        ],
      ),
    );
  }
}
