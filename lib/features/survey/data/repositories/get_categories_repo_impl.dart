import 'package:inposhiv/features/survey/data/data_source/get_categories_ds.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart'
    as entity;
import 'package:inposhiv/features/survey/domain/repositories/get_categories_repo.dart';

class GetCategoriesRepoImpl implements GetCategoriesRepo {
  GetCategoriesDs dataSource;
  GetCategoriesRepoImpl({required this.dataSource});
  @override
  Future<List<entity.CategoriesEntity>> getCategories() async {
    return await dataSource.convertModelToEntity();
  }

  @override
  Future<List<entity.Subcategory?>> getSpecificCategory(
      {required String category}) async {
    return await dataSource.convertSpecificCategoryModelToEntity(
        category: category);
  }
}
