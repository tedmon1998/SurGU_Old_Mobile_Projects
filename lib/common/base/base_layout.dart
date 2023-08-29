import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/source/remote/network_errors.dart';
import '../../presentation/widget/modal_progress_indicator.dart';
import 'base_controller.dart';

abstract class BaseLayout extends StatefulWidget {}

abstract class BaseLayoutState<C extends BaseController, L extends BaseLayout>
    extends State<L> {
  @protected
  late final C controller;

  @protected
  bool inSafeArea = true;

  @override
  void initState() {
    super.initState();
    controller = context.read<C>()..errorHandler = handleError;
    WidgetsBinding.instance?.addPostFrameCallback((_) => onInit());
  }

  @protected
  void onInit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          inSafeArea
              ? SafeArea(child: buildLayout(context))
              : buildLayout(context),
          ModalProgressIndicator(progress: controller.inProgress),
        ],
      ),
    );
  }

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @protected
  Widget buildLayout(BuildContext context);

  @protected
  void handleError(dynamic error, void Function() retry) {
    // showBottomSheet or dialog
    if (error is ConnectionError) {
      //todo handle ConnectionError
    } else if (error is UnauthorizedError) {
      //todo handle UnauthorizedError
    } else {
      //todo handle UnknownError
    }
  }
}
