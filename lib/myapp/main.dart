import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation_home_page/shared/bloc_observer/bloc_observer.dart';
import 'my_app.dart';


void main() {
  BlocOverrides.runZoned(
        () {
          runApp(  DevicePreview(
            enabled: !kReleaseMode,
            builder: (context) =>  const MyApp(), // Wrap your app
             ),
          );
    },
    blocObserver: MyBlocObserver(),
  );

}





