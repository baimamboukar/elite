import 'package:elite_one/app/view/app.dart';
import 'package:elite_one/bootstrap.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const EliteOne());
}
