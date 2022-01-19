import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/logic/cubits/bottomnav_cubit/bottomnavbar_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomnavbarCubit(),
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          var _context = context.watch<BottomnavbarCubit>();
          return Scaffold(
            body: _context.listPages[_context.pageIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.green,
            iconSize: 25,
            type: BottomNavigationBarType.shifting,
              onTap: (int index) {
                context.read<BottomnavbarCubit>().changePage(index);
              },
              currentIndex: _context.pageIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,color: Colors.green,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search,color: Colors.green,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today,color: Colors.green,),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings,color: Colors.green,),
                  label: "",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
