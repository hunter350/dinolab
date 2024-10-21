import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkPasswordProvider = StateProvider<String>(
  // We return the default sort type, here name.
      (ref) => '',
);