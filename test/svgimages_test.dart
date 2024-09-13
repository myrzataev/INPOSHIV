import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inposhiv/resources/resources.dart';

void main() {
  test('svgimages assets test', () {
    expect(File(SVGImages.auctiion).existsSync(), isTrue);
    expect(File(SVGImages.bottom).existsSync(), isTrue);
    expect(File(SVGImages.burgerMenu).existsSync(), isTrue);
    expect(File(SVGImages.chat).existsSync(), isTrue);
    expect(File(SVGImages.close).existsSync(), isTrue);
    expect(File(SVGImages.goback).existsSync(), isTrue);
    expect(File(SVGImages.home).existsSync(), isTrue);
    expect(File(SVGImages.info).existsSync(), isTrue);
    expect(File(SVGImages.orders).existsSync(), isTrue);
    expect(File(SVGImages.search).existsSync(), isTrue);
    expect(File(SVGImages.star).existsSync(), isTrue);
    expect(File(SVGImages.switchjusticon).existsSync(), isTrue);
  });
}
