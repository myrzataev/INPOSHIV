import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inposhiv/resources/resources.dart';

void main() {
  test('svg_images assets test', () {
    expect(File(SvgImages.add).existsSync(), isTrue);
    expect(File(SvgImages.addfollower).existsSync(), isTrue);
    expect(File(SvgImages.auctiion).existsSync(), isTrue);
    expect(File(SvgImages.bottom).existsSync(), isTrue);
    expect(File(SvgImages.burgerMenu).existsSync(), isTrue);
    expect(File(SvgImages.chat).existsSync(), isTrue);
    expect(File(SvgImages.check).existsSync(), isTrue);
    expect(File(SvgImages.close).existsSync(), isTrue);
    expect(File(SvgImages.creditcard).existsSync(), isTrue);
    expect(File(SvgImages.dark).existsSync(), isTrue);
    expect(File(SvgImages.darkMode).existsSync(), isTrue);
    expect(File(SvgImages.document).existsSync(), isTrue);
    expect(File(SvgImages.export).existsSync(), isTrue);
    expect(File(SvgImages.goback).existsSync(), isTrue);
    expect(File(SvgImages.home).existsSync(), isTrue);
    expect(File(SvgImages.icon).existsSync(), isTrue);
    expect(File(SvgImages.info).existsSync(), isTrue);
    expect(File(SvgImages.light).existsSync(), isTrue);
    expect(File(SvgImages.lock).existsSync(), isTrue);
    expect(File(SvgImages.orders).existsSync(), isTrue);
    expect(File(SvgImages.pen).existsSync(), isTrue);
    expect(File(SvgImages.popolnit).existsSync(), isTrue);
    expect(File(SvgImages.progress).existsSync(), isTrue);
    expect(File(SvgImages.quit).existsSync(), isTrue);
    expect(File(SvgImages.rating).existsSync(), isTrue);
    expect(File(SvgImages.search).existsSync(), isTrue);
    expect(File(SvgImages.send).existsSync(), isTrue);
    expect(File(SvgImages.sendmessage).existsSync(), isTrue);
    expect(File(SvgImages.sign).existsSync(), isTrue);
    expect(File(SvgImages.star).existsSync(), isTrue);
    expect(File(SvgImages.switchjusticon).existsSync(), isTrue);
    expect(File(SvgImages.system).existsSync(), isTrue);
    expect(File(SvgImages.techsupport).existsSync(), isTrue);
    expect(File(SvgImages.tick).existsSync(), isTrue);
  });
}
