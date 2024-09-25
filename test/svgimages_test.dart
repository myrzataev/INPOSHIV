import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inposhiv/resources/resources.dart';

void main() {
  test('svgimages assets test', () {
    expect(File(SvgImages.auctiion).existsSync(), isTrue);
    expect(File(SvgImages.bottom).existsSync(), isTrue);
    expect(File(SvgImages.burgerMenu).existsSync(), isTrue);
    expect(File(SvgImages.chat).existsSync(), isTrue);
    expect(File(SvgImages.close).existsSync(), isTrue);
    expect(File(SvgImages.goback).existsSync(), isTrue);
    expect(File(SvgImages.home).existsSync(), isTrue);
    expect(File(SvgImages.info).existsSync(), isTrue);
    expect(File(SvgImages.orders).existsSync(), isTrue);
    expect(File(SvgImages.pen).existsSync(), isTrue);
    expect(File(SvgImages.quit).existsSync(), isTrue);
    expect(File(SvgImages.search).existsSync(), isTrue);
    expect(File(SvgImages.send).existsSync(), isTrue);
    expect(File(SvgImages.star).existsSync(), isTrue);
    expect(File(SvgImages.switchjusticon).existsSync(), isTrue);
  });
}
