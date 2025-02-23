import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../extensions/world_countries_build_context_extension.dart";
import "../../models/item_properties.dart";
import "../../models/locale/typed_locale.dart";
import "../pickers/basic_picker.dart";
import "currency_tile.dart";

/// A picker widget that displays a list of fiat currencies.
class CurrencyPicker extends BasicPicker<FiatCurrency> {
  /// Constructor for the [CurrencyPicker] class.
  ///
  /// * [currencies] is the list of fiat currencies to display.
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const CurrencyPicker({
    Iterable<FiatCurrency> currencies = FiatCurrency.list,
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.cacheExtent,
    super.caseSensitiveSearch,
    super.chosen,
    super.clipBehavior,
    super.crossAxisAlignment,
    super.direction,
    super.disabled,
    super.dragStartBehavior,
    super.emptyStatePlaceholder,
    super.itemBuilder,
    super.key,
    super.keyboardDismissBehavior,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.onSelect,
    super.padding,
    super.physics,
    super.primary,
    super.restorationId,
    super.reverse,
    super.scrollController,
    super.searchBar,
    super.searchBarPadding,
    super.searchIn,
    super.separator,
    super.showClearButton,
    super.showSearchBar,
    super.shrinkWrap,
    super.sort,
    super.startWithSearch,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    super.translation,
  }) : super(currencies);

  /// Returns the list of fiat currencies being displayed by this widget.
  Iterable<FiatCurrency> get currencies => items;

  @override
  Widget defaultBuilder(
    BuildContext context,
    ItemProperties<FiatCurrency> itemProperties, {
    bool? isDense,
  }) =>
      context.currencyTileTheme?.builder?.call(
        itemProperties,
        isDense: isDense,
      ) ??
      CurrencyTile.fromProperties(
        itemProperties,
        title: itemNameTranslated(itemProperties.item, itemProperties.context),
        dense: isDense,
        onPressed:
            (currency) =>
                (isDense ?? false)
                    ? maybeSelectAndPop(currency, itemProperties.context)
                    : onSelect?.call(currency),
        visualDensity: (isDense ?? false) ? VisualDensity.compact : null,
      );

  @override
  Iterable<String> defaultSearch(FiatCurrency item, BuildContext context) =>
      Set.unmodifiable({
        ...super.defaultSearch(item, context),
        ...item.namesNative,
        item.name,
        item.code,
        item.unit,
      });

  @override
  String? nameTranslationCache(FiatCurrency item, TypedLocale locale) =>
      locale.currencyTranslations[item];

  @override
  // ignore: avoid-incomplete-copy-with, items is covering currencies.
  CurrencyPicker copyWith({
    Iterable<FiatCurrency>? items,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    bool? caseSensitiveSearch,
    Iterable<FiatCurrency>? chosen,
    Clip? clipBehavior,
    CrossAxisAlignment? crossAxisAlignment,
    Axis? direction,
    Iterable<FiatCurrency>? disabled,
    DragStartBehavior? dragStartBehavior,
    Widget? emptyStatePlaceholder,
    Key? key,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    void Function(FiatCurrency currency)? onSelect,
    EdgeInsetsGeometry? padding,
    ScrollPhysics? physics,
    bool? primary,
    String? restorationId,
    bool? reverse,
    ScrollController? scrollController,
    TextField? searchBar,
    EdgeInsetsGeometry? searchBarPadding,
    Widget? separator,
    bool? showClearButton,
    bool? showSearchBar,
    bool? shrinkWrap,
    int Function(FiatCurrency currency1, FiatCurrency currency2)? sort,
    bool? startWithSearch,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    Iterable<String> Function(FiatCurrency currency, BuildContext context)?
    searchIn,
    Widget? Function(
      ItemProperties<FiatCurrency> itemProperties, {
      bool? isDense,
    })?
    itemBuilder,
    TypedLocale? translation,
  }) => CurrencyPicker(
    currencies: items ?? currencies,
    addAutomaticKeepAlives:
        addAutomaticKeepAlives ?? this.addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries ?? this.addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes ?? this.addSemanticIndexes,
    cacheExtent: cacheExtent ?? this.cacheExtent,
    caseSensitiveSearch: caseSensitiveSearch ?? this.caseSensitiveSearch,
    chosen: chosen ?? this.chosen,
    clipBehavior: clipBehavior ?? this.clipBehavior,
    crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
    direction: direction ?? this.direction,
    disabled: disabled ?? this.disabled,
    dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
    emptyStatePlaceholder: emptyStatePlaceholder ?? this.emptyStatePlaceholder,
    itemBuilder: itemBuilder ?? this.itemBuilder,
    key: key ?? this.key,
    keyboardDismissBehavior:
        keyboardDismissBehavior ?? this.keyboardDismissBehavior,
    mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
    mainAxisSize: mainAxisSize ?? this.mainAxisSize,
    onSelect: onSelect ?? this.onSelect,
    padding: padding ?? this.padding,
    physics: physics ?? this.physics,
    primary: primary ?? this.primary,
    restorationId: restorationId ?? this.restorationId,
    reverse: reverse ?? this.reverse,
    scrollController: scrollController ?? this.scrollController,
    searchBar: searchBar ?? this.searchBar,
    searchBarPadding: searchBarPadding ?? this.searchBarPadding,
    searchIn: searchIn ?? this.searchIn,
    separator: separator ?? this.separator,
    showClearButton: showClearButton ?? this.showClearButton,
    showSearchBar: showSearchBar ?? showHeader,
    shrinkWrap: shrinkWrap ?? this.shrinkWrap,
    sort: sort ?? this.sort,
    startWithSearch: startWithSearch ?? this.startWithSearch,
    textBaseline: textBaseline ?? this.textBaseline,
    textDirection: textDirection ?? this.textDirection,
    verticalDirection: verticalDirection ?? this.verticalDirection,
    translation: translation ?? this.translation,
  );
}
