import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart'
    as entity;

abstract interface class GetCategoriesRepo {
  Future<List<entity.CategoriesEntity>> getCategories();
  Future<List<entity.Subcategory?>> getSpecificCategory({required String category});
}
