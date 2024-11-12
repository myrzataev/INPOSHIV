import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/survey/data/models/product_category_model.dart';
import 'package:inposhiv/features/survey/data/repositories/get_categories_repo_impl.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';

part 'get_categories_event.dart';
part 'get_categories_state.dart';
part 'get_categories_bloc.freezed.dart';

class GetCategoriesBloc extends Bloc<GetCategoriesEvent, GetCategoriesState> {
  GetCategoriesRepoImpl repoImpl;
  GetCategoriesBloc({required this.repoImpl}) : super(const _Initial()) {
    on<GetCategoriesEvent>((event, emit) async {
      await event.map(getAllCategories: (e) async {
        emit(const GetCategoriesState.loading());
        try {
          final result = await repoImpl.getCategories();
          emit(GetCategoriesState.loaded(entity: result));
        } catch (e) {
          emit(GetCategoriesState.error(errorText: e.toString()));
        }
      }, getSpecificCategory: (e) async {
        emit(const GetCategoriesState.loading());
        try {
          final result = await repoImpl.getSpecificCategory(category: e.slug);
          emit(GetCategoriesState.specificCategoryLoaded(entity: result));
        } catch (error) {
          emit(GetCategoriesState.errorSpecificCategory(
              errorText: error.toString()));
        }
      }, getProductCategory: (_GetProductCategory value) { 
        try {
          emit(const GetCategoriesState.loading());
          
        } catch (e) {
          
        }
       });
    });
  }
}
