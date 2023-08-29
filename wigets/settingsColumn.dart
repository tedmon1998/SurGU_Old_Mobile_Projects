import 'package:flutter/material.dart';

class SettingsColumn extends StatelessWidget {
  SettingsColumn({Key? key, required this.icoN, required this.texT})
      : super(key: key);
  Icon icoN;
  Text texT;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: PhysicalModel(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(7.5),
          child: Row(
            children: <Widget>[
              icoN,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: texT,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
