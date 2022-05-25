import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation_home_page/view_model/chat_view_model/chat_state.dart';

class ChatCubit extends Cubit<ChatStates>
{
  ChatCubit() : super(ChatIntialState());
  static ChatCubit get(context)=>BlocProvider.of(context);


}