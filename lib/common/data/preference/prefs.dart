import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';

import 'item/preference_item.dart';
import 'item/rx_preference_item.dart';
import 'item/rxn_preference_item.dart';

class Prefs {
  static final appTheme =
      PreferenceItem<CustomTheme>('appTheme', CustomTheme.light);
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPush2 = PreferenceItem<int>('isPushOn', 10);
  static final isPush3 = PreferenceItem<double>('isPushOn', 22.5);
  static final isPush4 = PreferenceItem<String>('isPushOn1', 'value');
  static final isPush5 = NullablePreferenceItem<bool>('isPushOn');
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPosition =
      RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthday =
      RxnPreferenceItem<DateTime, Rxn<DateTime>>('brithday', null);
  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
