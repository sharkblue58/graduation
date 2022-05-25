import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation_home_page/view_model/setting_view_model/setting_states.dart';


class SettingCubit extends Cubit<SettingStates>
{
  SettingCubit() : super(SettingIntialState());
  static SettingCubit get(context)=>BlocProvider.of(context);


}