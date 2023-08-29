import 'package:flutter/material.dart';

import '../../../common/base/base_layout.dart';
import '../../../common/resource/styles.dart';
import '../../../domain/controller/detail_controller.dart';

class DetailLayout extends BaseLayout {
  final String value;

  DetailLayout(this.value);

  @override
  State<StatefulWidget> createState() => _DetailLayoutState();
}

class _DetailLayoutState
    extends BaseLayoutState<DetailController, DetailLayout> {
  @override
  Widget buildLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.value,
            style: Styles.s14BlackW500,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24.0,
          ),
          ElevatedButton(
            onPressed: _navigateToHomeScreen,
            child: const Text('Back with result'),
          ),
        ],
      ),
    );
  }

  void _navigateToHomeScreen() {
    Navigator.pop(context, widget.value);
  }
}
