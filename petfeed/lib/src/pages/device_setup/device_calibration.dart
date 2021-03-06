import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petfeed/src/assets/app_colors.dart';
import 'package:petfeed/src/assets/assets.dart';
import 'package:petfeed/src/bloc/calibration_bloc/calibration_bloc_export.dart';
import 'package:petfeed/src/widgets/logo/logo.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class DeviceCalibration extends StatefulWidget {
  @override
  _DeviceCalibrationState createState() => _DeviceCalibrationState();
}

class _DeviceCalibrationState extends State<DeviceCalibration> {
  final _bloc = kiwi.Container().resolve<CalibrationBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            PetFeedLogo(),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Device setup (3/3): Calibrate Device',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(14),
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(5)),
                  Container(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(300),
                    padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: ScreenUtil().setSp(3),
                          color: Colors.black12,
                          offset: Offset(0, 1),
                          spreadRadius: ScreenUtil().setSp(3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                _bloc.startHopper();
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(91),
                                width: ScreenUtil().setWidth(100),
                                decoration: BoxDecoration(
                                  color: Color(AppColors.BLUE),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: ScreenUtil().setWidth(3),
                                      color: Colors.black12,
                                      offset: Offset(0, 1),
                                      spreadRadius: ScreenUtil().setWidth(1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Start Hopper',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setWidth(14),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _bloc.stopHopper();
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(91),
                                width: ScreenUtil().setWidth(100),
                                decoration: BoxDecoration(
                                  color: Color(AppColors.BLACK),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: ScreenUtil().setWidth(3),
                                      color: Colors.black12,
                                      offset: Offset(0, 1),
                                      spreadRadius: ScreenUtil().setWidth(1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Stop Hopper',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setWidth(14),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: ScreenUtil().setHeight(30)),
                        Center(
                          child: RaisedButton(
                            color: Color(AppColors.GREEN),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(50),
                              vertical: ScreenUtil().setHeight(10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(Routes.PET_SETUP);
                            },
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(14),
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
