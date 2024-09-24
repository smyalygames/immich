import 'package:flutter/foundation.dart';
import 'package:immich_mobile/constants/errors.dart';

abstract class BaseApiRepository {
  @protected
  Future<T> checkNull<T>(Future<T?> future) async {
    final response = await future;
    if (response == null) throw NoResponseDtoError();
    return response;
  }
}
