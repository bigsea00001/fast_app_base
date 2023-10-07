import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget {
  SearchAutoCompleteList({super.key});
  late final searchData = Get.find<SearchStockData>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) =>
            searchData.autoCompleteList[index].stockName.text.make());
  }
}
