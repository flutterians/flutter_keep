import 'package:flutter_bloc/flutter_bloc.dart';

class TabIndexCubit extends Cubit<int> {
  TabIndexCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
