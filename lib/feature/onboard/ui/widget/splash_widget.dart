import 'package:flutter/material.dart';

import '../../../../common/widget/others/page_wrapper.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        body: Container(
      child: Center(child: Text("Splash")),
    ));
  }
}
