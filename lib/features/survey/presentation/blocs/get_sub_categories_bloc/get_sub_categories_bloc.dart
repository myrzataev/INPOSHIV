import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/survey/data/data_source/get_categories_ds.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';

part 'get_sub_categories_event.dart';
part 'get_sub_categories_state.dart';
part 'get_sub_categories_bloc.freezed.dart';

class GetSubCategoriesBloc
    extends Bloc<GetSubCategoriesEvent, GetSubCategoriesState> {
  GetCategoriesDs getCategoriesDs;
  GetSubCategoriesBloc({required this.getCategoriesDs})
      : super(const _Initial()) {
    on<GetSubCategoriesEvent>((event, emit) async {
      try {
        emit(const GetSubCategoriesState.loading());
        final result =
            await getCategoriesDs.convertSpecificCategoryModelToEntity(category: event.slug);
        emit(GetSubCategoriesState.loaded(subcategories: result));
      } catch (e) {
        emit(const GetSubCategoriesState.error());
      }
    });
  }
}
