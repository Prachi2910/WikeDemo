// Flutter imports:
import 'package:flutter/material.dart';

class BottomSheetViewModel extends ChangeNotifier {
  final nameTextController = TextEditingController();

  final nameFormFieldKey = GlobalKey<FormFieldState>();

  final nameFocusNode = FocusNode();

  String get name => nameTextController.text;


  BottomSheetViewModel(){
    nameTextController.addListener(textControllerListener);
  }

  void textControllerListener() {
    notifyListeners();
  }
}
