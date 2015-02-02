library recipe_book_module;

import 'package:angular/angular.dart';

import 'package:angulardart_simple_module/component/recipe_book.dart';
import 'package:angulardart_simple_module/component/rating.dart';
import 'package:angulardart_simple_module/component/search_recipe.dart';
import 'package:angulardart_simple_module/component/view_recipe.dart';
import 'package:angulardart_simple_module/formatter/category_filter.dart';
import 'package:angulardart_simple_module/routing/recipe_book_router.dart';
import 'package:angulardart_simple_module/service/query.dart';
import 'package:angulardart_simple_module/tooltip/tooltip.dart';

class RecipeBookModule extends Module {

  RecipeBookModule() {
    bind(RecipeBookComponent);
    bind(RatingComponent);
    bind(Tooltip);
    bind(CategoryFilter);
    bind(SearchRecipeComponent);
    bind(ViewRecipeComponent);
    bind(QueryService);
    bind(RouteInitializerFn, toValue: recipeBookRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }

}
