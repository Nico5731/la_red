import 'package:flutter/material.dart';
import 'package:la_red/model/partido.dart';
import 'package:la_red/size_config.dart';

import '../constants.dart';

class FixtureListItem extends StatelessWidget {
  // double width;
  // double height;

  final double scale = 0.043;

  final Partido partido;

  FixtureListItem({
    this.partido,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.safeBlockHorizontal;
    double height = SizeConfig.blockSizeVertical;
    return Container(
      margin: EdgeInsets.only(
          left: width * (0.01),
          right: width * (0.01),
          top: height * (0.005),
          bottom: 0),
      height: height * (0.0944),
      decoration: BoxDecoration(
        color: kBordo,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * (0.05),
                  vertical: height * (0.002),
                ),
                child: Container(
                  width: width * (0.07),
                  height: width * (0.07),
//
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Image.asset(partido.equipo1.photoURL),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * (0.05),
                  vertical: height * (0.002),
                ),
                child: Container(
                  width: width * (0.07),
                  height: width * (0.07),
//
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Image.asset(partido.equipo2.photoURL),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: Text(
                    partido.equipo1.nombre,
                    style: kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Text(
                    'vs',
                    style: kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Text(
                    partido.equipo2.nombre,
                    style: kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    'CANCHA ${partido.numCancha}',
                    style: kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: width * 0.35,
                    child: Text(
                      partido.fecha,
                      style:
                          kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    '${partido.hora} HS',
                    style: kTextStyle.copyWith(fontSize: kFontSize, height: 1),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
