import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extensions.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";

class CurrencyTile extends ListItemTile<FiatCurrency> {
  const CurrencyTile(
    FiatCurrency currency, {
    super.autofocus,
    super.chosenIcon,
    super.contentPadding,
    super.dense,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isChosen,
    super.isDisabled,
    super.isThreeLine,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onPressed,
    super.onTap,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitle,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.title,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
  }) : super(currency);

  CurrencyTile.fromProperties(
    ItemProperties<FiatCurrency> currency, {
    Widget? leading,
    Widget? subtitle,
    Widget? title,
    double? minLeadingWidth = UiConstants.minWidth,
    super.autofocus,
    super.chosenIcon,
    super.contentPadding,
    super.dense,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isThreeLine,
    super.key,
    super.leadingAndTrailingTextStyle,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onPressed,
    super.onTap,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
  }) : super(
          currency.item,
          isChosen: currency.isChosen,
          isDisabled: currency.isDisabled,
          title: title ?? Text(currency.item.namesNative.first),
          minLeadingWidth: minLeadingWidth,
          leading: leading ??
              ConstrainedBox(
                constraints:
                    UiConstants.constraints.copyWith(minWidth: minLeadingWidth),
                child: Builder(
                  builder: (context) => Text(
                    currency.item.unit,
                    style: context.theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          subtitle: subtitle ??
              Text(
                "${currency.item.name} (${currency.item.code})",
                overflow: TextOverflow.ellipsis,
              ),
        );
}
