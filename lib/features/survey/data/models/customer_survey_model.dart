class Subcategory {
  String name;
  String slug;

  Subcategory({required this.name, required this.slug});

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
      };
}

class ClothingCategoriesList {
  String name;
  String slug;
  List<Subcategory> subcategories;

  ClothingCategoriesList({
    required this.name,
    required this.slug,
    required this.subcategories,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'subcategories': subcategories.map((e) => e.toJson()).toList(),
      };
}

class JobPrioritiesList {
  int? id;
  String slug;
  String name;

  JobPrioritiesList({ this.id, required this.slug, required this.name});

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'name': name,
      };
}

class CustomerSurveyModel {
  List<ClothingCategoriesList> clothingCategoriesList;
  int monthSalesVolume;
  List<JobPrioritiesList> customerPrioritiesList;

  CustomerSurveyModel({
    required this.clothingCategoriesList,
    required this.monthSalesVolume,
    required this.customerPrioritiesList,
  });

  Map<String, dynamic> toJson() => {
        'clothingCategoriesList': clothingCategoriesList.map((e) => e.toJson()).toList(),
        'monthSalesVolume': monthSalesVolume,
        'jobPrioritiesList': customerPrioritiesList.map((e) => e.toJson()).toList(),
      };
}


class ManufacturerSurveyModel {
  List<ClothingCategoriesList> clothingCategoriesList;
  int monthSalesVolume;
  List<JobPrioritiesList> manufacturerPrioritiesList;

  ManufacturerSurveyModel({
    required this.clothingCategoriesList,
    required this.monthSalesVolume,
    required this.manufacturerPrioritiesList,
  });

  Map<String, dynamic> toJson() => {
        'clothingCategoriesList': clothingCategoriesList.map((e) => e.toJson()).toList(),
        'monthSalesVolume': monthSalesVolume,
        'jobPrioritiesList': manufacturerPrioritiesList.map((e) => e.toJson()).toList(),
      };
}
