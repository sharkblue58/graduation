import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation_home_page/view_model/call_view_model/call_state.dart';


class CallCubit extends Cubit<CallStates>
{
  CallCubit() : super(CallIntialState());
  static CallCubit get(context)=>BlocProvider.of(context);


}