import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';

abstract class BaseController with ChangeNotifier, _ProgressHandler {
  void Function(dynamic, void Function() retry)? _handleError;

  set errorHandler(void Function(dynamic error, void Function() retry) handleError) => _handleError = handleError;

  @protected
  Future<void> execute<T>(
    Future<T> action, {
    void Function(T result)? onSuccess,
    void Function(dynamic error)? onError,
    required void Function() retry,
    bool withProgress = true,
  }) async {
    try {
      if (withProgress) showProgress();
      final result = await action;
      onSuccess?.call(result);
    } catch (error, stackTrace) {
      if (kDebugMode) {
        log('Execute error: $error\n$stackTrace');
      }
      onError != null ? onError(error) : _handleError?.call(error, retry);
    } finally {
      if (withProgress) hideProgress();
    }
  }
}

mixin _ProgressHandler on ChangeNotifier {
  bool inProgress = false;

  void showProgress() {
    inProgress = true;
    notifyListeners();
  }

  void hideProgress() {
    inProgress = false;
    notifyListeners();
  }
}
