import 'package:get/get.dart';

import 'ar-AE/ar_ae_translations.dart';
import 'en-US/en_us_translations.dart';

class AppTranslation extends Translations {
  static Map<String, Map<String, String>> translations = {
    'en_US': enUs,
    'ar_AE': arAe
  };

  @override
  Map<String, Map<String, String>> get keys => translations;
}
