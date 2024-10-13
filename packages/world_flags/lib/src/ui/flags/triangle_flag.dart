import "../painters/common/triangle_painter.dart";
import "basic_flag.dart";

/// A widget that represents a flag with a triangle shape.
///
/// This class extends [BasicFlag] and uses [TrianglePainter] to draw the
/// triangle shape as part of the flag's elements. It inherits all the
/// properties and customization options from [BasicFlag].
///
/// Example usage:
/// ```dart
/// TriangleFlag(myFlagProperties, aspectRatio: 1.5),
/// ```
class TriangleFlag extends BasicFlag {
  /// Creates a new instance of [TriangleFlag].
  ///
  /// - [properties]: The properties of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [foregroundWidget]: A widget to display in the foreground of the flag.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  const TriangleFlag(
    super.properties, {
    super.aspectRatio,
    super.backgroundPainter,
    super.decoration,
    super.decorationPosition,
    super.foregroundPainter,
    super.foregroundWidget,
    super.foregroundWidgetBuilder,
    super.key,
    super.padding,
  }) : super(elementsBuilder: TrianglePainter.new); // coverage:ignore-line
}
