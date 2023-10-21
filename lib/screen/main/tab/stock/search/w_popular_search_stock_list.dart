import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_item.dart';
import 'package:flutter/material.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: context.appColors.appBarbackground,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                '인기 검색'.text.bold.color(context.appColors.inputText).make(),
                emptyExpanded,
                '오늘 ${DateTime.now().formattedTime} 기준'
                    .text
                    .size(12)
                    .color(context.appColors.commonText)
                    .make(),
              ],
            ).pSymmetric(h: 20, v: 15),
            height20,
            ...popularStockList
                .mapIndexed((element, index) =>
                    PopularStockItem(stock: element, number: index + 1))
                .toList(),
          ],
        ).pSymmetric(h: 20, v: 20),
      ),
    );
  }
}
