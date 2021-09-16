import 'package:demo/constant/colors.constants.dart';
import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/ui/home/viewmodel/home.viewmodel.dart';
import 'package:demo/ui/home/widgets/header.widget.dart';
import 'package:demo/ui/home/widgets/recent_wikis.widget.dart';
import 'package:demo/ui/home/widgets/wiki_list.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      builder: (context, child) {
        return HomeBody();
      },
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kContentPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              VerticalSpace(kSpaceLarge),
              WikiListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
