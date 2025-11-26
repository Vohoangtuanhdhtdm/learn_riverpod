import 'package:flutter_riverpod/legacy.dart';
import 'package:learn_riverpod/model/riverpod_model.dart';

final riverpodEasyLevel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardLevel = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel(counter: 0);
});
