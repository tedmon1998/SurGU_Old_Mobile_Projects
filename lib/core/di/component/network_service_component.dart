import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../data/source/remote/network_api.dart';
import '../../../data/source/remote/network_service.dart';

const _connectTimeout = 20000;
const _receiveTimeout = 20000;
const _sendTimeout = 20000;

const _logPrintWidthSize = 90;

NetworkService createNetworkService({bool isDebug = true}) {
  final baseUrl = isDebug ? Api.stageEndpoint : Api.prodEndpoint;
  return NetworkService(
    baseUrl,
    connectTimeout: _connectTimeout,
    receiveTimeout: _receiveTimeout,
    sendTimeout: _sendTimeout,
    interceptors: [if (isDebug) _createLogger()],
  );
}

PrettyDioLogger _createLogger() {
  return PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: _logPrintWidthSize,
  );
}
