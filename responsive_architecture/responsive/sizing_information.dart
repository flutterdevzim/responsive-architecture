import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return '[SizingInformation] DeviceType: $deviceScreenType | ScreenSize: $screenSize | LocalWidgetSize: $localWidgetSize';
  }
}
