import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/ui/home/model/FolderModel.dart';
import 'package:flutter/material.dart';

class FolderContainerWidget extends StatelessWidget {
  const FolderContainerWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final FolderModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kListPadding),
      decoration: BoxDecoration(
          color: model.backgroundColor!.withOpacity(.8),
          borderRadius: BorderRadius.circular(kCardRadiusSmall)),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                model.icon,
                size: 50,
                color: Colors.white12,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                model.icon,
                size: 25,
                color: Colors.white,
              ),
              Text(
                model.text!,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
