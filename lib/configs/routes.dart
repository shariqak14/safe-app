import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listar_flutter/screens/choose_location/choose_location.dart';
import 'package:listar_flutter/screens/safer_main_menu/storm_tracking.dart';
import 'package:listar_flutter/screens/screen.dart';
import 'package:listar_flutter/screens/terms_of_use/terms_of_use.dart';

class Routes {
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String forgotPassword = "/forgotPassword";
  static const String productDetail = "/productDetail";
  static const String productDetailTab = "ProductDetailTab";
  static const String searchHistory = "/searchHistory";
  static const String category = "/category";
  static const String editProfile = "/editProfile";
  static const String changePassword = "/changePassword";
  static const String changeLanguage = "/changeLanguage";
  static const String contactUs = "/contactUs";
  static const String chat = "/chat";
  static const String aboutUs = "/aboutUs";
  static const String gallery = "/gallery";
  static const String photoPreview = "/photoPreview";
  static const String themeSetting = "/themeSetting";
  static const String listProduct = "/listProduct";
  static const String filter = "/filter";
  static const String review = "/review";
  static const String writeReview = "/writeReview";
  static const String location = "/location";
  static const String setting = "/setting";
  static const String fontSetting = "/fontSetting";
  static const String chooseLocation = "/chooseLocation";

  static const String stormTracking = "/stormTracking";
  static const String personalSafety = "/personalSafety";
  static const String personalRisk = "/personalRisk";
  static const String propertySafety = "/propertySafety";
  static const String propertyRisk = "/propertyRisk";
  static const String supplies = "/supplies";
  static const String evacuation = "/evacuation";
  static const String stayInTouch = "/stayInTouch";

  static const String termsOfUse = "/termsOfUse";

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case termsOfUse:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return TermsOfUse(title: category);
          },
        );

      case chooseLocation:
        final location = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return ChooseLocation(location: location);
          },
        );

      case stormTracking:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return StormTracking(title: category);
          },
        );

      case personalSafety:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return PersonalSafety(title: category);
          },
        );

      case personalRisk:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return PersonalRisk(title: category);
          },
        );

      case propertySafety:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return PropertySafety(title: category);
          },
        );

      case propertyRisk:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return PropertyRisk(title: category);
          },
        );

      case supplies:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return Supplies(title: category);
          },
        );

      case evacuation:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return Evacuation(title: category);
          },
        );

      case stayInTouch:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return StayInTouch(title: category);
          },
        );

      case changeLanguage:
        return MaterialPageRoute(
          builder: (context) {
            return LanguageSetting();
          },
        );

      case themeSetting:
        return MaterialPageRoute(
          builder: (context) {
            return ThemeSetting();
          },
        );

      case fontSetting:
        return MaterialPageRoute(
          builder: (context) {
            return FontSetting();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Not Found"),
              ),
              body: Center(
                child: Text('No path for ${settings.name}'),
              ),
            );
          },
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();

  factory Routes() {
    return _instance;
  }

  Routes._internal();
}
