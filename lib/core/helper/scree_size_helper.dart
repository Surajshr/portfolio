import 'package:flutter/cupertino.dart';

bool isMobileView({required BuildContext context}) {
  return MediaQuery.of(context).size.width < 700;
}
