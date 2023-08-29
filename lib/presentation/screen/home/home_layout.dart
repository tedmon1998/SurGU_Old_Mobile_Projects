import 'package:flutter/material.dart';

import '../../../common/base/base_layout.dart';
import '../../../common/resource/drawables.dart';
import '../../../common/resource/strings.dart';
import '../../../common/resource/styles.dart';
import '../../../core/navigation/routes.dart';
import '../../../domain/controller/home_controller.dart';
import '../detail/detail_screen.dart';

class HomeLayout extends BaseLayout {
  @override
  State<StatefulWidget> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends BaseLayoutState<HomeController, HomeLayout> {
  @override
  void onInit() => controller.loadScreenData();

  @override
  Widget buildLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Drawables.getImage(Drawables.dummy),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            Strings.projectDescription,
            style: Styles.s14BlackW500,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            controller.dummyValue,
            style: Styles.s12BlackW400,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: controller.loadScreenData,
                child: const Text('Random Joke'),
              ),
              const SizedBox(
                width: 12.0,
              ),
              ElevatedButton(
                onPressed: _navigateToDetailScreen,
                child: const Text('Joke Details'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _navigateToDetailScreen() async {
    final result = await Navigator.pushNamed<String>(
      context,
      Routes.detail,
      arguments: DetailScreenArguments(
        controller.dummyValue,
      ),
    );
    if (result != null) {
      controller.loadScreenData();
    }
  }
}
