import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
void main()async{
  await GetStorage.init();
  runApp(
    DevicePreview(
      enabled: true,
        builder: (context) => const TestTask(),
    )
  );
}
