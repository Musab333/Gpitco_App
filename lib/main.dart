import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/login_controller.dart';
import 'package:gpitco/controllers/splash_controller.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/about_app/About_app.dart';
import 'package:gpitco/views/account_statement/account_statement.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:gpitco/views/payment_voucher/add_payment_voucher.dart';
import 'package:gpitco/views/splash/splash_view.dart';
import 'package:http/http.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'controllers/choose_language_controller.dart';
import 'controllers/home_controller.dart';
import 'localization/demo_localization.dart';
import 'localization/language_constants.dart';
import 'utils/helpers/local_string.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get.put(LoginController());

  // Get.put(SplashController());
  // Get.put(LanguageController());
  // Get.put(HomeCotnroller());
  // Get.put(SplashController());
  // Get.lazyPut(() => LanguageController());

  // Get.put(HomeCotnroller()); // make sure this is first
  // Get.put(SecondController());
  // await translator.init(
  //   localeType: LocalizationDefaultType.asDefined,
  //   language: "ar",
  //   languagesList: <String>['ar', 'en'],
  //   assetsDirectory: 'assets/lang/',
  // );

  runApp(
    LocalizedApp(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _local = const Locale("en", "US");
  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._local = locale;
      });
      Get.updateLocale(_local);
    });
    super.didChangeDependencies();
  }

  void setLocale(Locale locale) {
    if (kDebugMode) {
      print("changing the local to ::: ${locale.languageCode}");
    }

    setState(() {
      _local = locale;
    });

    // update();
    if (kDebugMode) {
      // print("changing the _local to ::: ${_local!.languageCode}");
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gpitco',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppStyles.backgroundColor,
          fontFamily: "Cairo",
        ),
        // translations: LocaleString(),
        home: Accountstatement(),
        // builder: EasyLoading.init(),
        locale: _local,
        localizationsDelegates: const [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        // ignore: missing_return
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
        } // Locals list
        );
  }
}
