import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const StockSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarbackground,
      child: SafeArea(
        child: SizedBox(
          height: kToolbarHeight,
          child: Row(
            children: [
              Tap(
                onTap: () => Nav.pop(context),
                child: SizedBox(
                  width: 56,
                  height: kToolbarHeight,
                  child: Arrow(
                    color: context.appColors.commonText,
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              Expanded(
                child: TextFieldWithDelete(
                  controller: controller,
                  textInputAction: TextInputAction.search,
                  texthint: "'커피'를 검색해 보세요",
                  onEditingComplete: () {
                    debugPrint('검색 확인버튼 클릭');
                    AppKeyboardUtil.hide(context);
                  },
                ).pOnly(top: 6),
              ),
              width20,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
