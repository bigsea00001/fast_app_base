import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;
  const StockDetailScreen(this.stockName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.appColors.appBarbackground,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: context.appColors.commonText,
              ),
              onPressed: () => Nav.pop(context)),
          backgroundColor: context.appColors.appBarbackground,
          title: stockName.text.color(context.appColors.commonText).make(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              '주식 상세'.text.color(context.appColors.commonText).make(),
            ],
          ),
        ));
  }
}
