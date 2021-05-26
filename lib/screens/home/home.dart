import 'package:flutter/material.dart';
import 'package:listar_flutter/api/api.dart';
import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/models/model.dart';
import 'package:listar_flutter/models/screen_models/screen_models.dart';
import 'package:listar_flutter/screens/home/home_category_item.dart';
import 'package:listar_flutter/screens/home/home_sliver_app_bar.dart';
import 'package:listar_flutter/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  HomePageModel _homePage;
  List<LocationModel> _locationSelected = [];

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void updateLocation(String currentLocation) async {
    UtilPreferences.setString(Preferences.location, currentLocation);
  }

  // Fetch API
  Future<void> _loadData() async {
    final ResultApiModel result = await Api.getHome();
    if (result.success) {
      setState(() {
        _homePage = HomePageModel.fromJson(result.data);
      });
    }
  }

  // On select category
  void _onTapService(CategoryModel item) {
    switch (item.title) {
      case 'Storm Tracking':
        Navigator.pushNamed(context, Routes.stormTracking,
            arguments: item.title);
        break;
      case 'Personal Safety':
        Navigator.pushNamed(context, Routes.personalSafety,
            arguments: item.title);
        break;
      case 'Personal Risk':
        Navigator.pushNamed(context, Routes.personalRisk,
            arguments: item.title);
        break;
      case 'Property Safety':
        Navigator.pushNamed(context, Routes.propertySafety,
            arguments: item.title);
        break;
      case 'Property Risk':
        Navigator.pushNamed(context, Routes.propertyRisk,
            arguments: item.title);
        break;
      case 'Supplies':
        Navigator.pushNamed(context, Routes.supplies, arguments: item.title);
        break;
      case 'Evacuation':
        Navigator.pushNamed(context, Routes.evacuation, arguments: item.title);
        break;
      case 'Stay in Touch':
        Navigator.pushNamed(context, Routes.stayInTouch, arguments: item.title);
        break;
      default:
        break;
    }
  }

  // Build category UI
  Widget _buildCategory() {
    if (_homePage?.category == null) {
      return Wrap(
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: List.generate(8, (index) => index).map(
          (item) {
            return HomeCategoryItem();
          },
        ).toList(),
      );
    }

    List<CategoryModel> listBuild = _homePage.category;

    return Wrap(
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: listBuild.map(
        (item) {
          return HomeCategoryItem(
            item: item,
            onPressed: (item) {
              _onTapService(item);
            },
          );
        },
      ).toList(),
    );
  }

  Future<void> _onNavigateLocation() async {
    final result = await Navigator.pushNamed(
      context,
      Routes.chooseLocation,
      arguments: _locationSelected,
    );
    if (result != null) {
      setState(() {
        _locationSelected = result;
      });
      updateLocation(_locationSelected[0].name);
    }
  }

  String _buildLocationText() {
    return UtilPreferences.getString(Preferences.location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: AppBarHomeSliver(
              expandedHeight: MediaQuery.of(context).size.height * 0.30,
              banners: _homePage?.banner ?? [],
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SafeArea(
                top: false,
                bottom: false,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        right: 20,
                        left: 20,
                      ),
                      child: InkWell(
                        onTap: _onNavigateLocation,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        Translate.of(context)
                                            .translate('location'),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          _buildLocationText(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              RotatedBox(
                                quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  textDirection: TextDirection.ltr,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 0,
                        left: 35,
                        right: 35,
                      ),
                      child: _buildCategory(),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Dashboard',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Padding(padding: EdgeInsets.only(top: 3)),
                              Text(
                                'Urgent Care and Red Cross Facilities Map',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.89,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://connecticut.maps.arcgis.com/apps/opsdashboard/index.html#/728b88c606af45dcb3f891ffa20ee7cf');
                                        },
                                        child: Image.asset(
                                          'assets/images/dashboard.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
