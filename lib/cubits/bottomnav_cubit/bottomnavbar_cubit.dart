import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smart_farm/screens/calendar/calendar_page.dart';
import 'package:smart_farm/screens/home/home_page.dart';
import 'package:smart_farm/screens/settings/settings.dart';

part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  int pageIndex = 0 ;
  BottomnavbarCubit() : super(BottomnavbarInitial());
   List listPages =  [
      HomePage(),
      SettingsPage(),
      CalendarPage(),
      SettingsPage(),

    ];

    changePage(int tappedIndex){
      pageIndex = tappedIndex;

      emit(BottomnavbarInitial());
    
  }
}
