import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inposhiv/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ava).existsSync(), isTrue);
    expect(File(Images.bakai).existsSync(), isTrue);
    expect(File(Images.demir).existsSync(), isTrue);
    expect(File(Images.dos).existsSync(), isTrue);
    expect(File(Images.freedom).existsSync(), isTrue);
    expect(File(Images.girl).existsSync(), isTrue);
    expect(File(Images.good1).existsSync(), isTrue);
    expect(File(Images.good2).existsSync(), isTrue);
    expect(File(Images.logo1).existsSync(), isTrue);
    expect(File(Images.logo2).existsSync(), isTrue);
    expect(File(Images.logo3).existsSync(), isTrue);
    expect(File(Images.map).existsSync(), isTrue);
    expect(File(Images.mbank).existsSync(), isTrue);
    expect(File(Images.mbanktwo).existsSync(), isTrue);
    expect(File(Images.money).existsSync(), isTrue);
    expect(File(Images.onboarding).existsSync(), isTrue);
    expect(File(Images.optima).existsSync(), isTrue);
    expect(File(Images.sber).existsSync(), isTrue);
    expect(File(Images.seller).existsSync(), isTrue);
    expect(File(Images.sewingMachine).existsSync(), isTrue);
    expect(File(Images.switchIcon).existsSync(), isTrue);
    expect(File(Images.tbank).existsSync(), isTrue);
  });
}
