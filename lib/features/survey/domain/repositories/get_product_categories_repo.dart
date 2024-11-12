import 'package:inposhiv/features/survey/data/models/product_category_model.dart';

abstract interface class GetProductCategoriesRepo {
  Future<List<ProductCategoriesModel>> getProductCategory();
}