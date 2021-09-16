// Flutter imports:
import 'dart:convert';

import 'package:demo/constant/colors.constants.dart';
import 'package:demo/ui/home/model/FolderModel.dart';
import 'package:demo/ui/home/model/WikiModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeViewModel extends ChangeNotifier {
  List<FolderModel> folders = [
    FolderModel(
        text: "All Wikis",
        icon: Icons.book_outlined,
        backgroundColor: deepOrange),
    FolderModel(
        text: "My private notes",
        icon: Icons.lock_outlined,
        backgroundColor: info),
    FolderModel(
        text: "Bookmarked wikis",
        icon: Icons.bookmark,
        backgroundColor: deepPurple),
    FolderModel(
        text: "Templates",
        icon: Icons.library_books_outlined,
        backgroundColor: accentGreen)
  ];

  HomeViewModel();

  Future<WikiModel> getWikisData() async {
    final String response =
        await rootBundle.loadString('assets/jsons/wiki_data.json');
    final data = await json.decode(response);
    return WikiModel.fromJson(data);
  }
}
