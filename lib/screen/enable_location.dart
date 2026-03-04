import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_primary_button.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  bool _isLoading = false;

  Future<void> _handleLocationPermission() async {
    setState(() {
      _isLoading = true;
    });

    ///--------------- Check Permission ---------------------
    PermissionStatus status = await Permission.location.request();

    if (status.isGranted) {
      ///-------------- Get current position ----------------
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      print("Latitude: ${position.latitude}");
      print("Longitude: ${position.longitude}");

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Location: ${position.latitude}, ${position.longitude}",
            ),
          ),
        );
      }
    } else if (status.isPermanentlyDenied) {
      ///----------- Open app setting ------------------
      openAppSettings();
    } else {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Location permission denied")));
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Center(
          child: Column(
            children: [
             // Icon(Icons.location_on),
              Image.asset(AssetsPath.location,height: 160.h,width: 160.w,),
              SizedBox(height: 20.h,),
              Text(
                'Enable Location',
                style: TextStyle(
                  fontSize: 20.sp.clamp(19, 20),
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                textAlign: TextAlign.center,
                'Kindly allow us to access your location to\nprovide you with suggestions for nearby\nsalons',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp.clamp(13, 14),
                  color: Color(0xFF636F85),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: 327.h.clamp(325, 328),
                height: 56.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1B6EF7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  onPressed: () async {
                    if (_isLoading) return;
                    await _handleLocationPermission();
                  },
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Text(
                          "Enable",
                          style: TextStyle(
                            fontSize: 16.sp.clamp(14, 17),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),

              SizedBox(height: 20.h),
              Text(
                'Skip, Not Now',
                style: TextStyle(
                  fontSize: 16.sp.clamp(15, 16),
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
