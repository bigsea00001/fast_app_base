import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';

import 'setting/s_setting.dart';
import 'tab/f_my_stock.dart';
import 'tab/f_todays_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late TabController tabcontroller = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarbackground,
      padding:
          const EdgeInsets.only(bottom: MainScreenState.bottomNavigatiorHeight),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appColors.roundedLayoutBackgound,
            pinned: true,
            actions: [
              ImageButton(
                onTap: () {
                  Nav.push(const SearchStockScreen());
                },
                imagePath: '$basePath/icon/stock_search.png',
              ),
              ImageButton(
                onTap: () {
                  context.showSnackbar("캘린더");
                },
                imagePath: '$basePath/icon/stock_calendar.png',
              ),
              ImageButton(
                onTap: () {
                  // context.showSnackbar("설정");
                  Nav.push(const SettingScreen());
                },
                imagePath: '$basePath/icon/stock_settings.png',
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title,
                tabBar,
                if (currentIndex == 0)
                  const MyStockFragment()
                else
                  const TodaysDiscoveryFragment(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get title => Container(
        color: context.appColors.roundedLayoutBackgound,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).bold.make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.commonText)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
      );
  Widget get tabBar => Container(
        color: context.appColors.roundedLayoutBackgound,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              labelColor: Colors.white,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: -20),
              indicatorColor: Colors.white, //밑줄 색상
              controller: tabcontroller,
              tabs: [
                '내 주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
            ),
            const Line(),
          ],
        ),
      );
}
