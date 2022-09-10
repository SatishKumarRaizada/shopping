import 'package:flutter_riverpod/flutter_riverpod.dart';

final tabIndexProvider = StateNotifierProvider((ref) => TabIndex());

class TabIndex extends StateNotifier {
  TabIndex() : super(0);
  set value(int index) => state = index;
}
