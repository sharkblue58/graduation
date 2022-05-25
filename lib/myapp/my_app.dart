import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens/layout/layout_screen.dart';
import '../view_model/chat_view_model/chat_cubit.dart';
import '../view_model/layout_view_model/layout_cubit.dart';
import '../view_model/search_view_model/search_cubit.dart';
import '../view_model/setting_view_model/setting_cubit.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>LayoutCubit()),
        BlocProvider(create: (BuildContext context)=>ChatCubit()),
        BlocProvider(create: (BuildContext context)=>SearchCubit()),
        BlocProvider(create: (BuildContext context)=>SettingCubit()),
      ],
      child:MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home:const Layout(),
          ),
    );
  }

}