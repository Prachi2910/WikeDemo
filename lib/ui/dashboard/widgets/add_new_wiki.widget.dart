import 'package:demo/constant/colors.constants.dart';
import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:demo/constant/validation.constants.dart';
import 'package:demo/support/textfield.widget.dart';
import 'package:demo/support/visual_handler.widget.dart';
import 'package:demo/ui/dashboard/viewmodel/bottom_sheet.viewmodel.dart';
import 'package:demo/ui/dashboard/widgets/folder_button.widget.dart';
import 'package:demo/ui/dashboard/widgets/wiki_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AddNewWiki extends StatelessWidget {
  const AddNewWiki({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomSheetProvider = context.watch<BottomSheetViewModel>();
    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets,
      duration: const Duration(milliseconds: 80),
      curve: Curves.easeInOut,
      child: Container(
        padding: EdgeInsets.all(kContentPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisualHandle(),
            VerticalSpace(kSpaceLarge),
            Text(
              "Create New Wiki",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            VerticalSpace(kSpaceBig),
            CommonTextfield(
              textKey: bottomSheetProvider.nameFormFieldKey,
              showUnderLine: true,
              focusNode: bottomSheetProvider.nameFocusNode,
              textAlign: TextAlign.center,
              textOption: TextFieldOption(
                hintText: "Type a Title",
                maxLine: 1,
                keyboardType: TextInputType.text,
                inputController: bottomSheetProvider.nameTextController,
                formatter: [
                  FilteringTextInputFormatter.deny(RegExp(RegexForTextField))
                ],
              ),
              textCallback: (text) {},
              inputAction: TextInputAction.done,
            ),
            VerticalSpace(kSpaceHuge),
            WikiButton(),
            VerticalSpace(kSpaceBig),
            FolderButton(),
            Padding(
              padding: EdgeInsets.all(kContentPaddingBig),
              child: Text(
                "*Only visible to you, If you want you can share with others later.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
