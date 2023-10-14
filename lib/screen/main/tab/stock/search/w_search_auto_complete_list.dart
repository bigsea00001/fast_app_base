import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 's_stock_detail.dart';
import 'search_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {
  final TextEditingController controller;
  SearchAutoCompleteList(this.controller, {super.key});
  // late final searchData = Get.find<SearchStockData>(); ==> with mixin으로 호출

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarbackground,
      child: ListView.builder(
        itemCount: searchData.autoCompleteList.length,
        itemBuilder: (context, index) {
          final stock = searchData.autoCompleteList[index];
          final stockName = stock.name;
          return Tap(
            onTap: () {
              controller.clear();
              searchData.addHistory(stock);
              Nav.push(StockDetailScreen(stockName));
            },
            child:
                stockName.text.color(context.appColors.commonText).make().p(20),
          );
        },
      ),
    );
  }
}
