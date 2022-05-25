import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garduation_home_page/view_model/search_view_model/search_states.dart';


class SearchCubit extends Cubit<SearchStates>
{
  SearchCubit() : super(SearchIntialState());
  static SearchCubit get(context)=>BlocProvider.of(context);


}