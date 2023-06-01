import 'package:elite_one/src/app/assets.dart';

extension LocUtilsX on String {
  String get icon {
    switch (this) {
      case 'en':
        return Assets.assetsImagesEn;
      case 'fr':
        return Assets.assetsImagesFr;
      default:
        return Assets.assetsImagesEn;
    }
  }

  String get language {
    switch (this) {
      case 'en':
        return 'English';
      case 'fr':
        return 'Français';
      case 'es':
        return 'Spanish';
      case 'de':
        return 'Deutsch';
      case 'ar':
        return 'Arabic';
      case 'zh':
        return 'Chinese';
      default:
        return 'English';
    }
  }
}
