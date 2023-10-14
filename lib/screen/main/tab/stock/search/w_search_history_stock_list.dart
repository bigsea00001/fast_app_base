import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';

import 'search_stock_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarbackground,
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: Obx(
          () => ListView.builder(
            padding: const EdgeInsets.only(top: 5),
            scrollDirection: Axis.horizontal,
            itemCount: searchData.searchHistoryList.length,
            itemBuilder: (context, index) {
              final stockName = searchData.searchHistoryList[index];
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: [
                        Tap(
                          onTap: () {
                            Nav.push(StockDetailScreen(stockName));
                          },
                          child: stockName.text
                              .color(context.appColors.commonText)
                              .make(),
                        ),
                        Tap(
                          onTap: () {
                            searchData.removeHistory(stockName);
                          },
                          child: Icon(
                            Icons.close,
                            color: context.appColors.commonText,
                          ),
                        )
                      ],
                    )
                        .box
                        .withRounded(value: 6)
                        .color(context.appColors.roundedLayoutBackgound)
                        .p8
                        .make(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
