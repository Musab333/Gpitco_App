import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello World',
          'message': 'Welcome to Proto Coders Point',
          'title': 'Flutter Language - Localization',
        },
        'ar': {
          'hello': 'مدحباً',
          'message': 'دساله',
          'title': 'عنوان',
        },
      };
}
