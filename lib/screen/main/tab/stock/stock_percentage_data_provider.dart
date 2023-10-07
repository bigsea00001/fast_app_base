import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

abstract mixin class StockPercentageDataProvider {
  int get currentPrice; //존재한다고 가정 -> 이게 존재하는 클래스에서 mixin으로 합치면 된다.
  int get yesterdayClosePrice; //존재한다고 가정 -> 이게 존재하는 클래스에서 mixin으로 합치면 된다.

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .abs() //절대값
          .toPrecision(2); //toPrecision(2) 소수점 2자리까지 표현

  String get todayPercentageString => "$symbol$todayPercentage%";
  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame
      ? ""
      : isPlus
          ? "+"
          : "-";

  Color getPriceColor(BuildContext context) => isSame
      ? context.appColors.commonText
      : isPlus
          ? context.appColors.plus
          : context.appColors.minus;
}
