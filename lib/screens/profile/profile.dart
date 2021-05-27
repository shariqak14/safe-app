import 'package:flutter/material.dart';
import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/utils/utils.dart';
import 'package:listar_flutter/widgets/widget.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  ///On navigation
  void _onNavigate(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Translate.of(context).translate('pref'),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
          ),
          children: <Widget>[
            // AppListTitle(
            //   title: Translate.of(context).translate('language'),
            //   onPressed: () {
            //     _onNavigate(Routes.changeLanguage);
            //   },
            //   trailing: Row(
            //     children: <Widget>[
            //       Text(
            //         UtilLanguage.getGlobalLanguageName(
            //           AppLanguage.defaultLanguage.languageCode,
            //         ),
            //         style: Theme.of(context).textTheme.bodyText1,
            //       ),
            //       RotatedBox(
            //         quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
            //         child: Icon(
            //           Icons.keyboard_arrow_right,
            //           textDirection: TextDirection.ltr,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            AppListTitle(
              title: Translate.of(context).translate('theme'),
              onPressed: () {
                _onNavigate(Routes.themeSetting);
              },
              trailing: Container(
                margin: EdgeInsets.only(right: 10),
                width: 16,
                height: 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
            AppListTitle(
              title: Translate.of(context).translate('terms_of_use'),
              onPressed: () {
                Navigator.pushNamed(context, Routes.termsOfUse,
                    arguments: Translate.of(context).translate('terms_of_use'));
              },
              trailing: Row(
                children: <Widget>[
                  RotatedBox(
                    quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ],
              ),
            ),
            AppListTitle(
              title: Translate.of(context).translate('version'),
              onPressed: () {},
              trailing: Row(
                children: <Widget>[
                  Text(
                    Application.version,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  RotatedBox(
                    quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                    child: Icon(
                      Icons.arrow_drop_up,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ],
              ),
              border: false,
            ),
          ],
        ),
      ),
    );
  }
}
