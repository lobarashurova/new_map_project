import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_map_project/data/model/source/remote/request/map/map_reuqest.dart';
import 'package:new_map_project/lang/locale_keys.g.dart';
import 'package:new_map_project/presentation/screens/map_screen/bloc/map_screen_bloc.dart';
import 'package:new_map_project/presentation/screens/splash/login_screen.dart';
import 'package:new_map_project/presentation/widget/SignUpWidgets.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final controller = TextEditingController();
  final descriptionController = TextEditingController();
  var mapsController = TextEditingController();
  final List<MapObject> mapObjects = [];
  String? hint;
  String? long;
  String? lat;

  final mapControllerCompleter = Completer<YandexMapController>();
  final bloc = MapScreenBloc();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<MapScreenBloc, MapScreenState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: CupertinoColors.extraLightBackgroundGray,
                leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.blue,
                    )),
                title: Text(
                  LocaleKeys.ads.tr(),
                  style: GoogleFonts.nunito(color: Colors.black, fontSize: 18),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        var snackbarError = const SnackBar(
                            content: Text("Error while adding location"));
                        var snackbarSuccess =
                            const SnackBar(content: Text("Successfully added"));
                        var snackbarLoading =
                            const SnackBar(content: Text("Loading..."));
                        bloc.add(AddLocation(MapRequest(
                            controller.text,
                            descriptionController.text,
                            double.parse(long ?? "0"),
                            double.parse(lat ?? "0"))));

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SplashScreen()));
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbarSuccess);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                      ))
                ],
              ),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    buildRegisterText(LocaleKeys.title.tr()),
                    buildRegisterInput("Enter product title", controller),
                    buildRegisterText(LocaleKeys.description.tr()),
                    buildDescription(height),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(
                          flex: 1,
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Text(
                            "Change location",
                            style: GoogleFonts.nunito(color: Colors.black),
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    buildRegisterText("Address by location"),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey6,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: CupertinoColors.tertiarySystemFill)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              readOnly: true,
                              keyboardType: TextInputType.text,
                              controller: mapsController,
                              decoration: InputDecoration(
                                hintText:
                                    "Selected address:${hint ?? "Waiting to tap map"}",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildRegisterText(
                            "longtitue:\n${long ?? "waiting to tap..."}"),
                        buildRegisterText(
                            "latitude \n${lat ?? "waiting to tap..."}"),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: height / 3,
                      margin: EdgeInsets.all(10),
                      child: YandexMap(
                        onMapCreated: (controller) {
                          mapControllerCompleter.complete(controller);
                        },
                        mapObjects: mapObjects,
                        zoomGesturesEnabled: true,
                        onMapTap: (point) {
                          setState(() {
                            long = point.longitude.toString();
                            lat = point.latitude.toString();
                          });
                        },
                        onObjectTap: (geoObject) {
                          setState(() {
                            mapsController =
                                TextEditingController(text: geoObject.name);
                          });
                        },
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }

  Container buildDescription(double height) {
    return Container(
      height: height / 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: CupertinoColors.tertiarySystemFill)),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: descriptionController,
              decoration:  InputDecoration(
                hintText: LocaleKeys.description.tr(),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
