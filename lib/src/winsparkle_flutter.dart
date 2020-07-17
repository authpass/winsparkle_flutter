import 'dart:ffi';

import 'package:ffi/ffi.dart';

part 'typedefs.dart';

final _winsparkle = DynamicLibrary.open('advapi32.dll');
