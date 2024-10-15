import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/survey/data/models/category_model.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart'
    as entity;
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';

class GetCategoriesDs {
  final Dio dio;
  GetCategoriesDs({required this.dio});

  // Fetch categories from API
  Future<List<CategoryModel>> getCategories() async {
    final Response response = await dio.get(UrlRoutes.getCategories);
    final List responseList = response.data as List;
    return responseList
        .map((element) => CategoryModel.fromJson(element))
        .toList();
  }

  // Convert the CategoryModel list to CategoriesEntity list
  Future<List<entity.CategoriesEntity>> convertModelToEntity() async {
    final List<CategoryModel> modelList = await getCategories();

    // Map the list of CategoryModel to a list of CategoriesEntity
    return modelList.map((model) {
      return entity.CategoriesEntity(
        slug: model.slug,
        name: model.name,
        id: model.id,
        subcategories: model.subcategories?.map((subcategory) {
          return entity.Subcategory(
            slug: subcategory.slug,
            id: subcategory.id,
            name: subcategory.name,
          );
        }).toList(),
      );
    }).toList();
  }

  Future<List<Subcategory?>> getSpecificCategory(
      {required String category}) async {
    final Response response =
        await dio.get("${UrlRoutes.getCategories}/$category");
    final List<Subcategory?> responseList = await response.data;
    return responseList.map((element) => element).toList();
  }

  Future<List<entity.Subcategory?>> convertSpecificCategoryModelToEntity(
      {required String category}) async {
    List<Subcategory?> modelList =
        await getSpecificCategory(category: category);
    return modelList.map((model) {
      return entity.Subcategory(
          name: (model?.name ?? ""), slug: model?.slug, id: model?.id ?? 0);
    }).toList();
  }
}
