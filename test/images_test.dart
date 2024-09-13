import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inposhiv/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ava).existsSync(), isTrue);
    expect(File(Images.girl).existsSync(), isTrue);
    expect(File(Images.good1).existsSync(), isTrue);
    expect(File(Images.good2).existsSync(), isTrue);
    expect(File(Images.logo1).existsSync(), isTrue);
    expect(File(Images.logo2).existsSync(), isTrue);
    expect(File(Images.logo3).existsSync(), isTrue);
    expect(File(Images.money).existsSync(), isTrue);
    expect(File(Images.switchIcon).existsSync(), isTrue);
  });
}
