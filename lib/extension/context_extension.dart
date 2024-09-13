

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size get mq => MediaQuery.of(this).size;

}